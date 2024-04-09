; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43310 () Bool)

(assert start!43310)

(declare-fun b_free!12169 () Bool)

(declare-fun b_next!12169 () Bool)

(assert (=> start!43310 (= b_free!12169 (not b_next!12169))))

(declare-fun tp!42778 () Bool)

(declare-fun b_and!20939 () Bool)

(assert (=> start!43310 (= tp!42778 b_and!20939)))

(declare-fun b!479554 () Bool)

(declare-fun res!286121 () Bool)

(declare-fun e!282177 () Bool)

(assert (=> b!479554 (=> (not res!286121) (not e!282177))))

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!479554 (= res!286121 (validKeyInArray!0 k!1332))))

(declare-fun b!479555 () Bool)

(declare-fun res!286125 () Bool)

(assert (=> b!479555 (=> (not res!286125) (not e!282177))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-datatypes ((array!30999 0))(
  ( (array!31000 (arr!14903 (Array (_ BitVec 32) (_ BitVec 64))) (size!15261 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30999)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-datatypes ((V!19313 0))(
  ( (V!19314 (val!6888 Int)) )
))
(declare-datatypes ((ValueCell!6479 0))(
  ( (ValueCellFull!6479 (v!9173 V!19313)) (EmptyCell!6479) )
))
(declare-datatypes ((array!31001 0))(
  ( (array!31002 (arr!14904 (Array (_ BitVec 32) ValueCell!6479)) (size!15262 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31001)

(assert (=> b!479555 (= res!286125 (and (= (size!15262 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15261 _keys!1874) (size!15262 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!479556 () Bool)

(declare-fun res!286124 () Bool)

(assert (=> b!479556 (=> (not res!286124) (not e!282177))))

(declare-fun minValue!1458 () V!19313)

(declare-fun zeroValue!1458 () V!19313)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((tuple2!9036 0))(
  ( (tuple2!9037 (_1!4528 (_ BitVec 64)) (_2!4528 V!19313)) )
))
(declare-datatypes ((List!9149 0))(
  ( (Nil!9146) (Cons!9145 (h!10001 tuple2!9036) (t!15363 List!9149)) )
))
(declare-datatypes ((ListLongMap!7963 0))(
  ( (ListLongMap!7964 (toList!3997 List!9149)) )
))
(declare-fun contains!2604 (ListLongMap!7963 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2289 (array!30999 array!31001 (_ BitVec 32) (_ BitVec 32) V!19313 V!19313 (_ BitVec 32) Int) ListLongMap!7963)

(assert (=> b!479556 (= res!286124 (contains!2604 (getCurrentListMap!2289 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k!1332))))

(declare-fun b!479557 () Bool)

(declare-fun e!282176 () Bool)

(declare-fun tp_is_empty!13681 () Bool)

(assert (=> b!479557 (= e!282176 tp_is_empty!13681)))

(declare-fun b!479558 () Bool)

(declare-fun e!282180 () Bool)

(assert (=> b!479558 (= e!282180 (ite (= k!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!479559 () Bool)

(declare-fun res!286123 () Bool)

(assert (=> b!479559 (=> (not res!286123) (not e!282177))))

(declare-datatypes ((List!9150 0))(
  ( (Nil!9147) (Cons!9146 (h!10002 (_ BitVec 64)) (t!15364 List!9150)) )
))
(declare-fun arrayNoDuplicates!0 (array!30999 (_ BitVec 32) List!9150) Bool)

(assert (=> b!479559 (= res!286123 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9147))))

(declare-fun mapNonEmpty!22219 () Bool)

(declare-fun mapRes!22219 () Bool)

(declare-fun tp!42777 () Bool)

(assert (=> mapNonEmpty!22219 (= mapRes!22219 (and tp!42777 e!282176))))

(declare-fun mapValue!22219 () ValueCell!6479)

(declare-fun mapKey!22219 () (_ BitVec 32))

(declare-fun mapRest!22219 () (Array (_ BitVec 32) ValueCell!6479))

(assert (=> mapNonEmpty!22219 (= (arr!14904 _values!1516) (store mapRest!22219 mapKey!22219 mapValue!22219))))

(declare-fun b!479560 () Bool)

(assert (=> b!479560 (= e!282177 (not (and (bvslt #b00000000000000000000000000000000 (size!15261 _keys!1874)) (bvslt (size!15261 _keys!1874) #b01111111111111111111111111111111))))))

(assert (=> b!479560 e!282180))

(declare-fun c!57604 () Bool)

(assert (=> b!479560 (= c!57604 (and (not (= k!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!14036 0))(
  ( (Unit!14037) )
))
(declare-fun lt!217868 () Unit!14036)

(declare-fun lemmaKeyInListMapIsInArray!111 (array!30999 array!31001 (_ BitVec 32) (_ BitVec 32) V!19313 V!19313 (_ BitVec 64) Int) Unit!14036)

(assert (=> b!479560 (= lt!217868 (lemmaKeyInListMapIsInArray!111 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k!1332 defaultEntry!1519))))

(declare-fun b!479561 () Bool)

(declare-fun arrayContainsKey!0 (array!30999 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!479561 (= e!282180 (arrayContainsKey!0 _keys!1874 k!1332 #b00000000000000000000000000000000))))

(declare-fun res!286122 () Bool)

(assert (=> start!43310 (=> (not res!286122) (not e!282177))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43310 (= res!286122 (validMask!0 mask!2352))))

(assert (=> start!43310 e!282177))

(assert (=> start!43310 true))

(assert (=> start!43310 tp_is_empty!13681))

(declare-fun e!282178 () Bool)

(declare-fun array_inv!10736 (array!31001) Bool)

(assert (=> start!43310 (and (array_inv!10736 _values!1516) e!282178)))

(assert (=> start!43310 tp!42778))

(declare-fun array_inv!10737 (array!30999) Bool)

(assert (=> start!43310 (array_inv!10737 _keys!1874)))

(declare-fun b!479562 () Bool)

(declare-fun e!282179 () Bool)

(assert (=> b!479562 (= e!282178 (and e!282179 mapRes!22219))))

(declare-fun condMapEmpty!22219 () Bool)

(declare-fun mapDefault!22219 () ValueCell!6479)

