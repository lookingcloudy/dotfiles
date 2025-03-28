from collections import deque

from ...classes.graph import Graph

__all__ = [
    "CurrentEdge",
    "Level",
    "GlobalRelabelThreshold",
    "build_residual_network",
    "detect_unboundedness",
    "build_flow_dict",
]

class CurrentEdge:
    __slots__ = ...

    def __init__(self, edges): ...
    def get(self): ...
    def move_to_next(self): ...
    def _rewind(self): ...

class Level:
    __slots__ = ...

    def __init__(self): ...

class GlobalRelabelThreshold:
    def __init__(self, n, m, freq): ...
    def add_work(self, work): ...
    def is_reached(self): ...
    def clear_work(self): ...

def build_residual_network(G: Graph, capacity): ...
def detect_unboundedness(R, s, t): ...
def build_flow_dict(G: Graph, R): ...
