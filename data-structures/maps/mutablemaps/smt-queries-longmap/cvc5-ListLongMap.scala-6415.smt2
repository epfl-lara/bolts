; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82314 () Bool)

(assert start!82314)

(declare-fun b_free!18559 () Bool)

(declare-fun b_next!18559 () Bool)

(assert (=> start!82314 (= b_free!18559 (not b_next!18559))))

(declare-fun tp!64639 () Bool)

(declare-fun b_and!30065 () Bool)

(assert (=> start!82314 (= tp!64639 b_and!30065)))

(declare-fun b!959122 () Bool)

(declare-fun res!642133 () Bool)

(declare-fun e!540711 () Bool)

(assert (=> b!959122 (=> (not res!642133) (not e!540711))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-datatypes ((V!33337 0))(
  ( (V!33338 (val!10683 Int)) )
))
(declare-fun minValue!1328 () V!33337)

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((array!58641 0))(
  ( (array!58642 (arr!28190 (Array (_ BitVec 32) (_ BitVec 64))) (size!28670 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58641)

(declare-datatypes ((ValueCell!10151 0))(
  ( (ValueCellFull!10151 (v!13240 V!33337)) (EmptyCell!10151) )
))
(declare-datatypes ((array!58643 0))(
  ( (array!58644 (arr!28191 (Array (_ BitVec 32) ValueCell!10151)) (size!28671 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58643)

(declare-fun defaultEntry!1389 () Int)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(declare-fun zeroValue!1328 () V!33337)

(declare-datatypes ((tuple2!13864 0))(
  ( (tuple2!13865 (_1!6942 (_ BitVec 64)) (_2!6942 V!33337)) )
))
(declare-datatypes ((List!19730 0))(
  ( (Nil!19727) (Cons!19726 (h!20888 tuple2!13864) (t!28101 List!19730)) )
))
(declare-datatypes ((ListLongMap!12575 0))(
  ( (ListLongMap!12576 (toList!6303 List!19730)) )
))
(declare-fun contains!5356 (ListLongMap!12575 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3488 (array!58641 array!58643 (_ BitVec 32) (_ BitVec 32) V!33337 V!33337 (_ BitVec 32) Int) ListLongMap!12575)

(assert (=> b!959122 (= res!642133 (contains!5356 (getCurrentListMap!3488 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28190 _keys!1668) i!793)))))

(declare-fun mapNonEmpty!33877 () Bool)

(declare-fun mapRes!33877 () Bool)

(declare-fun tp!64638 () Bool)

(declare-fun e!540713 () Bool)

(assert (=> mapNonEmpty!33877 (= mapRes!33877 (and tp!64638 e!540713))))

(declare-fun mapRest!33877 () (Array (_ BitVec 32) ValueCell!10151))

(declare-fun mapValue!33877 () ValueCell!10151)

(declare-fun mapKey!33877 () (_ BitVec 32))

(assert (=> mapNonEmpty!33877 (= (arr!28191 _values!1386) (store mapRest!33877 mapKey!33877 mapValue!33877))))

(declare-fun b!959123 () Bool)

(declare-fun res!642130 () Bool)

(assert (=> b!959123 (=> (not res!642130) (not e!540711))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!959123 (= res!642130 (validKeyInArray!0 (select (arr!28190 _keys!1668) i!793)))))

(declare-fun b!959124 () Bool)

(declare-fun res!642134 () Bool)

(assert (=> b!959124 (=> (not res!642134) (not e!540711))))

(assert (=> b!959124 (= res!642134 (and (= (size!28671 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28670 _keys!1668) (size!28671 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!959125 () Bool)

(assert (=> b!959125 (= e!540711 (not true))))

(assert (=> b!959125 (contains!5356 (getCurrentListMap!3488 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 #b00000000000000000000000000000000 defaultEntry!1389) (select (arr!28190 _keys!1668) i!793))))

(declare-datatypes ((Unit!32157 0))(
  ( (Unit!32158) )
))
(declare-fun lt!430475 () Unit!32157)

(declare-fun lemmaInListMapFromThenInFromSmaller!8 (array!58641 array!58643 (_ BitVec 32) (_ BitVec 32) V!33337 V!33337 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Int) Unit!32157)

(assert (=> b!959125 (= lt!430475 (lemmaInListMapFromThenInFromSmaller!8 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 #b00000000000000000000000000000000 i!793 defaultEntry!1389))))

(declare-fun res!642132 () Bool)

(assert (=> start!82314 (=> (not res!642132) (not e!540711))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82314 (= res!642132 (validMask!0 mask!2088))))

(assert (=> start!82314 e!540711))

(assert (=> start!82314 true))

(declare-fun tp_is_empty!21265 () Bool)

(assert (=> start!82314 tp_is_empty!21265))

(declare-fun array_inv!21797 (array!58641) Bool)

(assert (=> start!82314 (array_inv!21797 _keys!1668)))

(declare-fun e!540710 () Bool)

(declare-fun array_inv!21798 (array!58643) Bool)

(assert (=> start!82314 (and (array_inv!21798 _values!1386) e!540710)))

(assert (=> start!82314 tp!64639))

(declare-fun mapIsEmpty!33877 () Bool)

(assert (=> mapIsEmpty!33877 mapRes!33877))

(declare-fun b!959126 () Bool)

(declare-fun res!642131 () Bool)

(assert (=> b!959126 (=> (not res!642131) (not e!540711))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58641 (_ BitVec 32)) Bool)

(assert (=> b!959126 (= res!642131 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!959127 () Bool)

(declare-fun e!540712 () Bool)

(assert (=> b!959127 (= e!540712 tp_is_empty!21265)))

(declare-fun b!959128 () Bool)

(assert (=> b!959128 (= e!540710 (and e!540712 mapRes!33877))))

(declare-fun condMapEmpty!33877 () Bool)

(declare-fun mapDefault!33877 () ValueCell!10151)

