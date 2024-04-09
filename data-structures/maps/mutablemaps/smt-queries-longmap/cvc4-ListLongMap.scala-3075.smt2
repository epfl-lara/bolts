; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43314 () Bool)

(assert start!43314)

(declare-fun b_free!12173 () Bool)

(declare-fun b_next!12173 () Bool)

(assert (=> start!43314 (= b_free!12173 (not b_next!12173))))

(declare-fun tp!42789 () Bool)

(declare-fun b_and!20943 () Bool)

(assert (=> start!43314 (= tp!42789 b_and!20943)))

(declare-fun res!286156 () Bool)

(declare-fun e!282214 () Bool)

(assert (=> start!43314 (=> (not res!286156) (not e!282214))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43314 (= res!286156 (validMask!0 mask!2352))))

(assert (=> start!43314 e!282214))

(assert (=> start!43314 true))

(declare-fun tp_is_empty!13685 () Bool)

(assert (=> start!43314 tp_is_empty!13685))

(declare-datatypes ((V!19317 0))(
  ( (V!19318 (val!6890 Int)) )
))
(declare-datatypes ((ValueCell!6481 0))(
  ( (ValueCellFull!6481 (v!9175 V!19317)) (EmptyCell!6481) )
))
(declare-datatypes ((array!31007 0))(
  ( (array!31008 (arr!14907 (Array (_ BitVec 32) ValueCell!6481)) (size!15265 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31007)

(declare-fun e!282213 () Bool)

(declare-fun array_inv!10740 (array!31007) Bool)

(assert (=> start!43314 (and (array_inv!10740 _values!1516) e!282213)))

(assert (=> start!43314 tp!42789))

(declare-datatypes ((array!31009 0))(
  ( (array!31010 (arr!14908 (Array (_ BitVec 32) (_ BitVec 64))) (size!15266 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31009)

(declare-fun array_inv!10741 (array!31009) Bool)

(assert (=> start!43314 (array_inv!10741 _keys!1874)))

(declare-fun b!479620 () Bool)

(assert (=> b!479620 (= e!282214 (not (and (bvslt #b00000000000000000000000000000000 (size!15266 _keys!1874)) (bvslt (size!15266 _keys!1874) #b01111111111111111111111111111111))))))

(declare-fun e!282212 () Bool)

(assert (=> b!479620 e!282212))

(declare-fun c!57610 () Bool)

(declare-fun k!1332 () (_ BitVec 64))

(assert (=> b!479620 (= c!57610 (and (not (= k!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!14040 0))(
  ( (Unit!14041) )
))
(declare-fun lt!217874 () Unit!14040)

(declare-fun minValue!1458 () V!19317)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-fun zeroValue!1458 () V!19317)

(declare-fun defaultEntry!1519 () Int)

(declare-fun lemmaKeyInListMapIsInArray!113 (array!31009 array!31007 (_ BitVec 32) (_ BitVec 32) V!19317 V!19317 (_ BitVec 64) Int) Unit!14040)

(assert (=> b!479620 (= lt!217874 (lemmaKeyInListMapIsInArray!113 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k!1332 defaultEntry!1519))))

(declare-fun b!479621 () Bool)

(declare-fun res!286158 () Bool)

(assert (=> b!479621 (=> (not res!286158) (not e!282214))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!479621 (= res!286158 (validKeyInArray!0 k!1332))))

(declare-fun b!479622 () Bool)

(declare-fun arrayContainsKey!0 (array!31009 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!479622 (= e!282212 (arrayContainsKey!0 _keys!1874 k!1332 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!22225 () Bool)

(declare-fun mapRes!22225 () Bool)

(declare-fun tp!42790 () Bool)

(declare-fun e!282216 () Bool)

(assert (=> mapNonEmpty!22225 (= mapRes!22225 (and tp!42790 e!282216))))

(declare-fun mapValue!22225 () ValueCell!6481)

(declare-fun mapRest!22225 () (Array (_ BitVec 32) ValueCell!6481))

(declare-fun mapKey!22225 () (_ BitVec 32))

(assert (=> mapNonEmpty!22225 (= (arr!14907 _values!1516) (store mapRest!22225 mapKey!22225 mapValue!22225))))

(declare-fun b!479623 () Bool)

(assert (=> b!479623 (= e!282216 tp_is_empty!13685)))

(declare-fun mapIsEmpty!22225 () Bool)

(assert (=> mapIsEmpty!22225 mapRes!22225))

(declare-fun b!479624 () Bool)

(declare-fun e!282217 () Bool)

(assert (=> b!479624 (= e!282217 tp_is_empty!13685)))

(declare-fun b!479625 () Bool)

(declare-fun res!286161 () Bool)

(assert (=> b!479625 (=> (not res!286161) (not e!282214))))

(declare-datatypes ((List!9153 0))(
  ( (Nil!9150) (Cons!9149 (h!10005 (_ BitVec 64)) (t!15367 List!9153)) )
))
(declare-fun arrayNoDuplicates!0 (array!31009 (_ BitVec 32) List!9153) Bool)

(assert (=> b!479625 (= res!286161 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9150))))

(declare-fun b!479626 () Bool)

(declare-fun res!286159 () Bool)

(assert (=> b!479626 (=> (not res!286159) (not e!282214))))

(declare-datatypes ((tuple2!9040 0))(
  ( (tuple2!9041 (_1!4530 (_ BitVec 64)) (_2!4530 V!19317)) )
))
(declare-datatypes ((List!9154 0))(
  ( (Nil!9151) (Cons!9150 (h!10006 tuple2!9040) (t!15368 List!9154)) )
))
(declare-datatypes ((ListLongMap!7967 0))(
  ( (ListLongMap!7968 (toList!3999 List!9154)) )
))
(declare-fun contains!2606 (ListLongMap!7967 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2291 (array!31009 array!31007 (_ BitVec 32) (_ BitVec 32) V!19317 V!19317 (_ BitVec 32) Int) ListLongMap!7967)

(assert (=> b!479626 (= res!286159 (contains!2606 (getCurrentListMap!2291 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k!1332))))

(declare-fun b!479627 () Bool)

(declare-fun res!286160 () Bool)

(assert (=> b!479627 (=> (not res!286160) (not e!282214))))

(assert (=> b!479627 (= res!286160 (and (= (size!15265 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15266 _keys!1874) (size!15265 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!479628 () Bool)

(assert (=> b!479628 (= e!282213 (and e!282217 mapRes!22225))))

(declare-fun condMapEmpty!22225 () Bool)

(declare-fun mapDefault!22225 () ValueCell!6481)

