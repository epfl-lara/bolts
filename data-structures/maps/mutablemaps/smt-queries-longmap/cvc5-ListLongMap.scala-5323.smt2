; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71202 () Bool)

(assert start!71202)

(declare-fun b_free!13345 () Bool)

(declare-fun b_next!13345 () Bool)

(assert (=> start!71202 (= b_free!13345 (not b_next!13345))))

(declare-fun tp!46795 () Bool)

(declare-fun b_and!22289 () Bool)

(assert (=> start!71202 (= tp!46795 b_and!22289)))

(declare-fun res!563653 () Bool)

(declare-fun e!460474 () Bool)

(assert (=> start!71202 (=> (not res!563653) (not e!460474))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71202 (= res!563653 (validMask!0 mask!1312))))

(assert (=> start!71202 e!460474))

(declare-fun tp_is_empty!15055 () Bool)

(assert (=> start!71202 tp_is_empty!15055))

(declare-datatypes ((array!46246 0))(
  ( (array!46247 (arr!22164 (Array (_ BitVec 32) (_ BitVec 64))) (size!22585 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46246)

(declare-fun array_inv!17649 (array!46246) Bool)

(assert (=> start!71202 (array_inv!17649 _keys!976)))

(assert (=> start!71202 true))

(declare-datatypes ((V!25075 0))(
  ( (V!25076 (val!7575 Int)) )
))
(declare-datatypes ((ValueCell!7112 0))(
  ( (ValueCellFull!7112 (v!10005 V!25075)) (EmptyCell!7112) )
))
(declare-datatypes ((array!46248 0))(
  ( (array!46249 (arr!22165 (Array (_ BitVec 32) ValueCell!7112)) (size!22586 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46248)

(declare-fun e!460469 () Bool)

(declare-fun array_inv!17650 (array!46248) Bool)

(assert (=> start!71202 (and (array_inv!17650 _values!788) e!460469)))

(assert (=> start!71202 tp!46795))

(declare-datatypes ((tuple2!10046 0))(
  ( (tuple2!10047 (_1!5033 (_ BitVec 64)) (_2!5033 V!25075)) )
))
(declare-fun lt!374477 () tuple2!10046)

(declare-fun lt!374480 () tuple2!10046)

(declare-fun b!826687 () Bool)

(declare-datatypes ((List!15883 0))(
  ( (Nil!15880) (Cons!15879 (h!17008 tuple2!10046) (t!22238 List!15883)) )
))
(declare-datatypes ((ListLongMap!8883 0))(
  ( (ListLongMap!8884 (toList!4457 List!15883)) )
))
(declare-fun lt!374482 () ListLongMap!8883)

(declare-fun e!460470 () Bool)

(declare-fun lt!374481 () ListLongMap!8883)

(declare-fun +!1918 (ListLongMap!8883 tuple2!10046) ListLongMap!8883)

(assert (=> b!826687 (= e!460470 (= lt!374481 (+!1918 (+!1918 lt!374482 lt!374477) lt!374480)))))

(declare-fun b!826688 () Bool)

(declare-fun e!460472 () Bool)

(declare-fun e!460475 () Bool)

(assert (=> b!826688 (= e!460472 e!460475)))

(declare-fun res!563656 () Bool)

(assert (=> b!826688 (=> res!563656 e!460475)))

(declare-fun lt!374483 () ListLongMap!8883)

(assert (=> b!826688 (= res!563656 (not (= lt!374481 (+!1918 (+!1918 lt!374483 lt!374480) lt!374477))))))

(declare-fun lt!374473 () ListLongMap!8883)

(declare-fun lt!374475 () ListLongMap!8883)

(assert (=> b!826688 (and (= lt!374473 lt!374475) (= lt!374481 lt!374475) (= lt!374481 lt!374473))))

(declare-fun lt!374474 () ListLongMap!8883)

(assert (=> b!826688 (= lt!374475 (+!1918 lt!374474 lt!374480))))

(declare-fun lt!374478 () ListLongMap!8883)

(assert (=> b!826688 (= lt!374473 (+!1918 lt!374478 lt!374480))))

(declare-fun zeroValueBefore!34 () V!25075)

(declare-datatypes ((Unit!28349 0))(
  ( (Unit!28350) )
))
(declare-fun lt!374476 () Unit!28349)

(declare-fun zeroValueAfter!34 () V!25075)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!240 (ListLongMap!8883 (_ BitVec 64) V!25075 V!25075) Unit!28349)

(assert (=> b!826688 (= lt!374476 (addSameAsAddTwiceSameKeyDiffValues!240 lt!374478 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!826688 e!460470))

(declare-fun res!563654 () Bool)

(assert (=> b!826688 (=> (not res!563654) (not e!460470))))

(declare-fun lt!374479 () ListLongMap!8883)

(assert (=> b!826688 (= res!563654 (= lt!374479 lt!374474))))

(declare-fun lt!374472 () tuple2!10046)

(assert (=> b!826688 (= lt!374474 (+!1918 lt!374478 lt!374472))))

(assert (=> b!826688 (= lt!374478 (+!1918 lt!374483 lt!374477))))

(assert (=> b!826688 (= lt!374480 (tuple2!10047 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!460468 () Bool)

(assert (=> b!826688 e!460468))

(declare-fun res!563658 () Bool)

(assert (=> b!826688 (=> (not res!563658) (not e!460468))))

(assert (=> b!826688 (= res!563658 (= lt!374479 (+!1918 (+!1918 lt!374483 lt!374472) lt!374477)))))

(declare-fun minValue!754 () V!25075)

(assert (=> b!826688 (= lt!374477 (tuple2!10047 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> b!826688 (= lt!374472 (tuple2!10047 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2562 (array!46246 array!46248 (_ BitVec 32) (_ BitVec 32) V!25075 V!25075 (_ BitVec 32) Int) ListLongMap!8883)

(assert (=> b!826688 (= lt!374481 (getCurrentListMap!2562 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!826688 (= lt!374479 (getCurrentListMap!2562 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!826689 () Bool)

(assert (=> b!826689 (= e!460468 (= lt!374481 (+!1918 (+!1918 lt!374482 (tuple2!10047 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!374477)))))

(declare-fun b!826690 () Bool)

(declare-fun res!563660 () Bool)

(assert (=> b!826690 (=> (not res!563660) (not e!460474))))

(declare-datatypes ((List!15884 0))(
  ( (Nil!15881) (Cons!15880 (h!17009 (_ BitVec 64)) (t!22239 List!15884)) )
))
(declare-fun arrayNoDuplicates!0 (array!46246 (_ BitVec 32) List!15884) Bool)

(assert (=> b!826690 (= res!563660 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15881))))

(declare-fun mapIsEmpty!24208 () Bool)

(declare-fun mapRes!24208 () Bool)

(assert (=> mapIsEmpty!24208 mapRes!24208))

(declare-fun b!826691 () Bool)

(declare-fun e!460473 () Bool)

(assert (=> b!826691 (= e!460469 (and e!460473 mapRes!24208))))

(declare-fun condMapEmpty!24208 () Bool)

(declare-fun mapDefault!24208 () ValueCell!7112)

