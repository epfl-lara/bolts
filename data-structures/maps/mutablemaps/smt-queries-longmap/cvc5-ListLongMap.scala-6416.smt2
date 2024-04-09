; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82320 () Bool)

(assert start!82320)

(declare-fun b_free!18565 () Bool)

(declare-fun b_next!18565 () Bool)

(assert (=> start!82320 (= b_free!18565 (not b_next!18565))))

(declare-fun tp!64657 () Bool)

(declare-fun b_and!30071 () Bool)

(assert (=> start!82320 (= tp!64657 b_and!30071)))

(declare-fun b!959212 () Bool)

(declare-fun e!540758 () Bool)

(declare-fun tp_is_empty!21271 () Bool)

(assert (=> b!959212 (= e!540758 tp_is_empty!21271)))

(declare-fun b!959213 () Bool)

(declare-fun res!642196 () Bool)

(declare-fun e!540756 () Bool)

(assert (=> b!959213 (=> (not res!642196) (not e!540756))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-datatypes ((V!33345 0))(
  ( (V!33346 (val!10686 Int)) )
))
(declare-fun minValue!1328 () V!33345)

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((array!58651 0))(
  ( (array!58652 (arr!28195 (Array (_ BitVec 32) (_ BitVec 64))) (size!28675 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58651)

(declare-datatypes ((ValueCell!10154 0))(
  ( (ValueCellFull!10154 (v!13243 V!33345)) (EmptyCell!10154) )
))
(declare-datatypes ((array!58653 0))(
  ( (array!58654 (arr!28196 (Array (_ BitVec 32) ValueCell!10154)) (size!28676 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58653)

(declare-fun defaultEntry!1389 () Int)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(declare-fun zeroValue!1328 () V!33345)

(declare-datatypes ((tuple2!13868 0))(
  ( (tuple2!13869 (_1!6944 (_ BitVec 64)) (_2!6944 V!33345)) )
))
(declare-datatypes ((List!19733 0))(
  ( (Nil!19730) (Cons!19729 (h!20891 tuple2!13868) (t!28104 List!19733)) )
))
(declare-datatypes ((ListLongMap!12579 0))(
  ( (ListLongMap!12580 (toList!6305 List!19733)) )
))
(declare-fun contains!5358 (ListLongMap!12579 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3490 (array!58651 array!58653 (_ BitVec 32) (_ BitVec 32) V!33345 V!33345 (_ BitVec 32) Int) ListLongMap!12579)

(assert (=> b!959213 (= res!642196 (contains!5358 (getCurrentListMap!3490 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28195 _keys!1668) i!793)))))

(declare-fun b!959214 () Bool)

(declare-fun res!642198 () Bool)

(assert (=> b!959214 (=> (not res!642198) (not e!540756))))

(assert (=> b!959214 (= res!642198 (and (= (size!28676 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28675 _keys!1668) (size!28676 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!33886 () Bool)

(declare-fun mapRes!33886 () Bool)

(declare-fun tp!64656 () Bool)

(declare-fun e!540757 () Bool)

(assert (=> mapNonEmpty!33886 (= mapRes!33886 (and tp!64656 e!540757))))

(declare-fun mapKey!33886 () (_ BitVec 32))

(declare-fun mapRest!33886 () (Array (_ BitVec 32) ValueCell!10154))

(declare-fun mapValue!33886 () ValueCell!10154)

(assert (=> mapNonEmpty!33886 (= (arr!28196 _values!1386) (store mapRest!33886 mapKey!33886 mapValue!33886))))

(declare-fun b!959216 () Bool)

(declare-fun res!642194 () Bool)

(assert (=> b!959216 (=> (not res!642194) (not e!540756))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!959216 (= res!642194 (validKeyInArray!0 (select (arr!28195 _keys!1668) i!793)))))

(declare-fun b!959217 () Bool)

(assert (=> b!959217 (= e!540756 (not true))))

(assert (=> b!959217 (contains!5358 (getCurrentListMap!3490 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 #b00000000000000000000000000000000 defaultEntry!1389) (select (arr!28195 _keys!1668) i!793))))

(declare-datatypes ((Unit!32161 0))(
  ( (Unit!32162) )
))
(declare-fun lt!430484 () Unit!32161)

(declare-fun lemmaInListMapFromThenInFromSmaller!10 (array!58651 array!58653 (_ BitVec 32) (_ BitVec 32) V!33345 V!33345 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Int) Unit!32161)

(assert (=> b!959217 (= lt!430484 (lemmaInListMapFromThenInFromSmaller!10 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 #b00000000000000000000000000000000 i!793 defaultEntry!1389))))

(declare-fun b!959218 () Bool)

(declare-fun e!540755 () Bool)

(assert (=> b!959218 (= e!540755 (and e!540758 mapRes!33886))))

(declare-fun condMapEmpty!33886 () Bool)

(declare-fun mapDefault!33886 () ValueCell!10154)

