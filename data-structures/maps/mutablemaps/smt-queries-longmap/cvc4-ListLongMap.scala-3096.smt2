; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43528 () Bool)

(assert start!43528)

(declare-fun b_free!12299 () Bool)

(declare-fun b_next!12299 () Bool)

(assert (=> start!43528 (= b_free!12299 (not b_next!12299))))

(declare-fun tp!43180 () Bool)

(declare-fun b_and!21077 () Bool)

(assert (=> start!43528 (= tp!43180 b_and!21077)))

(declare-fun b!482000 () Bool)

(declare-fun res!287402 () Bool)

(declare-fun e!283638 () Bool)

(assert (=> b!482000 (=> (not res!287402) (not e!283638))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-datatypes ((array!31253 0))(
  ( (array!31254 (arr!15026 (Array (_ BitVec 32) (_ BitVec 64))) (size!15384 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31253)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-datatypes ((V!19485 0))(
  ( (V!19486 (val!6953 Int)) )
))
(declare-datatypes ((ValueCell!6544 0))(
  ( (ValueCellFull!6544 (v!9242 V!19485)) (EmptyCell!6544) )
))
(declare-datatypes ((array!31255 0))(
  ( (array!31256 (arr!15027 (Array (_ BitVec 32) ValueCell!6544)) (size!15385 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31255)

(assert (=> b!482000 (= res!287402 (and (= (size!15385 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15384 _keys!1874) (size!15385 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!22426 () Bool)

(declare-fun mapRes!22426 () Bool)

(assert (=> mapIsEmpty!22426 mapRes!22426))

(declare-fun b!482001 () Bool)

(declare-fun e!283641 () Bool)

(declare-fun e!283642 () Bool)

(assert (=> b!482001 (= e!283641 (and e!283642 mapRes!22426))))

(declare-fun condMapEmpty!22426 () Bool)

(declare-fun mapDefault!22426 () ValueCell!6544)

