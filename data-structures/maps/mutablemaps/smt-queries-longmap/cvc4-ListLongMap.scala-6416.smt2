; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82324 () Bool)

(assert start!82324)

(declare-fun b_free!18569 () Bool)

(declare-fun b_next!18569 () Bool)

(assert (=> start!82324 (= b_free!18569 (not b_next!18569))))

(declare-fun tp!64669 () Bool)

(declare-fun b_and!30075 () Bool)

(assert (=> start!82324 (= tp!64669 b_and!30075)))

(declare-fun b!959272 () Bool)

(declare-fun res!642239 () Bool)

(declare-fun e!540785 () Bool)

(assert (=> b!959272 (=> (not res!642239) (not e!540785))))

(declare-datatypes ((array!58659 0))(
  ( (array!58660 (arr!28199 (Array (_ BitVec 32) (_ BitVec 64))) (size!28679 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58659)

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58659 (_ BitVec 32)) Bool)

(assert (=> b!959272 (= res!642239 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!959273 () Bool)

(declare-fun res!642238 () Bool)

(assert (=> b!959273 (=> (not res!642238) (not e!540785))))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((V!33349 0))(
  ( (V!33350 (val!10688 Int)) )
))
(declare-datatypes ((ValueCell!10156 0))(
  ( (ValueCellFull!10156 (v!13245 V!33349)) (EmptyCell!10156) )
))
(declare-datatypes ((array!58661 0))(
  ( (array!58662 (arr!28200 (Array (_ BitVec 32) ValueCell!10156)) (size!28680 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58661)

(assert (=> b!959273 (= res!642238 (and (= (size!28680 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28679 _keys!1668) (size!28680 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!959274 () Bool)

(declare-fun e!540788 () Bool)

(declare-fun tp_is_empty!21275 () Bool)

(assert (=> b!959274 (= e!540788 tp_is_empty!21275)))

(declare-fun b!959275 () Bool)

(declare-fun res!642240 () Bool)

(assert (=> b!959275 (=> (not res!642240) (not e!540785))))

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(assert (=> b!959275 (= res!642240 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28679 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28679 _keys!1668))))))

(declare-fun mapNonEmpty!33892 () Bool)

(declare-fun mapRes!33892 () Bool)

(declare-fun tp!64668 () Bool)

(declare-fun e!540786 () Bool)

(assert (=> mapNonEmpty!33892 (= mapRes!33892 (and tp!64668 e!540786))))

(declare-fun mapKey!33892 () (_ BitVec 32))

(declare-fun mapValue!33892 () ValueCell!10156)

(declare-fun mapRest!33892 () (Array (_ BitVec 32) ValueCell!10156))

(assert (=> mapNonEmpty!33892 (= (arr!28200 _values!1386) (store mapRest!33892 mapKey!33892 mapValue!33892))))

(declare-fun b!959276 () Bool)

(assert (=> b!959276 (= e!540786 tp_is_empty!21275)))

(declare-fun b!959277 () Bool)

(assert (=> b!959277 (= e!540785 (not true))))

(declare-fun minValue!1328 () V!33349)

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33349)

(declare-datatypes ((tuple2!13872 0))(
  ( (tuple2!13873 (_1!6946 (_ BitVec 64)) (_2!6946 V!33349)) )
))
(declare-datatypes ((List!19736 0))(
  ( (Nil!19733) (Cons!19732 (h!20894 tuple2!13872) (t!28107 List!19736)) )
))
(declare-datatypes ((ListLongMap!12583 0))(
  ( (ListLongMap!12584 (toList!6307 List!19736)) )
))
(declare-fun contains!5360 (ListLongMap!12583 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3492 (array!58659 array!58661 (_ BitVec 32) (_ BitVec 32) V!33349 V!33349 (_ BitVec 32) Int) ListLongMap!12583)

(assert (=> b!959277 (contains!5360 (getCurrentListMap!3492 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 #b00000000000000000000000000000000 defaultEntry!1389) (select (arr!28199 _keys!1668) i!793))))

(declare-datatypes ((Unit!32165 0))(
  ( (Unit!32166) )
))
(declare-fun lt!430490 () Unit!32165)

(declare-fun lemmaInListMapFromThenInFromSmaller!12 (array!58659 array!58661 (_ BitVec 32) (_ BitVec 32) V!33349 V!33349 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Int) Unit!32165)

(assert (=> b!959277 (= lt!430490 (lemmaInListMapFromThenInFromSmaller!12 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 #b00000000000000000000000000000000 i!793 defaultEntry!1389))))

(declare-fun res!642234 () Bool)

(assert (=> start!82324 (=> (not res!642234) (not e!540785))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82324 (= res!642234 (validMask!0 mask!2088))))

(assert (=> start!82324 e!540785))

(assert (=> start!82324 true))

(assert (=> start!82324 tp_is_empty!21275))

(declare-fun array_inv!21803 (array!58659) Bool)

(assert (=> start!82324 (array_inv!21803 _keys!1668)))

(declare-fun e!540784 () Bool)

(declare-fun array_inv!21804 (array!58661) Bool)

(assert (=> start!82324 (and (array_inv!21804 _values!1386) e!540784)))

(assert (=> start!82324 tp!64669))

(declare-fun b!959278 () Bool)

(declare-fun res!642236 () Bool)

(assert (=> b!959278 (=> (not res!642236) (not e!540785))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!959278 (= res!642236 (validKeyInArray!0 (select (arr!28199 _keys!1668) i!793)))))

(declare-fun mapIsEmpty!33892 () Bool)

(assert (=> mapIsEmpty!33892 mapRes!33892))

(declare-fun b!959279 () Bool)

(declare-fun res!642235 () Bool)

(assert (=> b!959279 (=> (not res!642235) (not e!540785))))

(declare-datatypes ((List!19737 0))(
  ( (Nil!19734) (Cons!19733 (h!20895 (_ BitVec 64)) (t!28108 List!19737)) )
))
(declare-fun arrayNoDuplicates!0 (array!58659 (_ BitVec 32) List!19737) Bool)

(assert (=> b!959279 (= res!642235 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19734))))

(declare-fun b!959280 () Bool)

(declare-fun res!642237 () Bool)

(assert (=> b!959280 (=> (not res!642237) (not e!540785))))

(assert (=> b!959280 (= res!642237 (contains!5360 (getCurrentListMap!3492 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28199 _keys!1668) i!793)))))

(declare-fun b!959281 () Bool)

(assert (=> b!959281 (= e!540784 (and e!540788 mapRes!33892))))

(declare-fun condMapEmpty!33892 () Bool)

(declare-fun mapDefault!33892 () ValueCell!10156)

