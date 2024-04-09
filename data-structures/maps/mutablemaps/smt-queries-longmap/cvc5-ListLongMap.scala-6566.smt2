; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83308 () Bool)

(assert start!83308)

(declare-fun b_free!19273 () Bool)

(declare-fun b_next!19273 () Bool)

(assert (=> start!83308 (= b_free!19273 (not b_next!19273))))

(declare-fun tp!67099 () Bool)

(declare-fun b_and!30785 () Bool)

(assert (=> start!83308 (= tp!67099 b_and!30785)))

(declare-fun mapNonEmpty!35266 () Bool)

(declare-fun mapRes!35266 () Bool)

(declare-fun tp!67098 () Bool)

(declare-fun e!547807 () Bool)

(assert (=> mapNonEmpty!35266 (= mapRes!35266 (and tp!67098 e!547807))))

(declare-datatypes ((V!34545 0))(
  ( (V!34546 (val!11136 Int)) )
))
(declare-datatypes ((ValueCell!10604 0))(
  ( (ValueCellFull!10604 (v!13695 V!34545)) (EmptyCell!10604) )
))
(declare-fun mapValue!35266 () ValueCell!10604)

(declare-datatypes ((array!60373 0))(
  ( (array!60374 (arr!29046 (Array (_ BitVec 32) ValueCell!10604)) (size!29526 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60373)

(declare-fun mapRest!35266 () (Array (_ BitVec 32) ValueCell!10604))

(declare-fun mapKey!35266 () (_ BitVec 32))

(assert (=> mapNonEmpty!35266 (= (arr!29046 _values!1425) (store mapRest!35266 mapKey!35266 mapValue!35266))))

(declare-fun b!971766 () Bool)

(declare-fun e!547806 () Bool)

(declare-fun tp_is_empty!22171 () Bool)

(assert (=> b!971766 (= e!547806 tp_is_empty!22171)))

(declare-fun b!971767 () Bool)

(declare-fun res!650567 () Bool)

(declare-fun e!547804 () Bool)

(assert (=> b!971767 (=> (not res!650567) (not e!547804))))

(declare-datatypes ((array!60375 0))(
  ( (array!60376 (arr!29047 (Array (_ BitVec 32) (_ BitVec 64))) (size!29527 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60375)

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60375 (_ BitVec 32)) Bool)

(assert (=> b!971767 (= res!650567 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!971768 () Bool)

(declare-fun res!650562 () Bool)

(assert (=> b!971768 (=> (not res!650562) (not e!547804))))

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!971768 (= res!650562 (validKeyInArray!0 (select (arr!29047 _keys!1717) i!822)))))

(declare-fun b!971769 () Bool)

(declare-fun e!547805 () Bool)

(assert (=> b!971769 (= e!547805 (not true))))

(declare-fun zeroValue!1367 () V!34545)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun minValue!1367 () V!34545)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((tuple2!14378 0))(
  ( (tuple2!14379 (_1!7199 (_ BitVec 64)) (_2!7199 V!34545)) )
))
(declare-datatypes ((List!20270 0))(
  ( (Nil!20267) (Cons!20266 (h!21428 tuple2!14378) (t!28649 List!20270)) )
))
(declare-datatypes ((ListLongMap!13089 0))(
  ( (ListLongMap!13090 (toList!6560 List!20270)) )
))
(declare-fun lt!431847 () ListLongMap!13089)

(declare-fun defaultEntry!1428 () Int)

(declare-fun lt!431846 () (_ BitVec 64))

(declare-fun +!2841 (ListLongMap!13089 tuple2!14378) ListLongMap!13089)

(declare-fun getCurrentListMap!3745 (array!60375 array!60373 (_ BitVec 32) (_ BitVec 32) V!34545 V!34545 (_ BitVec 32) Int) ListLongMap!13089)

(declare-fun get!15068 (ValueCell!10604 V!34545) V!34545)

(declare-fun dynLambda!1680 (Int (_ BitVec 64)) V!34545)

(assert (=> b!971769 (= lt!431847 (+!2841 (getCurrentListMap!3745 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvadd #b00000000000000000000000000000001 (bvsub from!2118 #b00000000000000000000000000000001)) defaultEntry!1428) (tuple2!14379 lt!431846 (get!15068 (select (arr!29046 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1680 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!32343 0))(
  ( (Unit!32344) )
))
(declare-fun lt!431848 () Unit!32343)

(declare-fun lemmaListMapRecursiveValidKeyArray!252 (array!60375 array!60373 (_ BitVec 32) (_ BitVec 32) V!34545 V!34545 (_ BitVec 32) Int) Unit!32343)

(assert (=> b!971769 (= lt!431848 (lemmaListMapRecursiveValidKeyArray!252 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!971770 () Bool)

(assert (=> b!971770 (= e!547804 e!547805)))

(declare-fun res!650563 () Bool)

(assert (=> b!971770 (=> (not res!650563) (not e!547805))))

(assert (=> b!971770 (= res!650563 (validKeyInArray!0 lt!431846))))

(assert (=> b!971770 (= lt!431846 (select (arr!29047 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(assert (=> b!971770 (= lt!431847 (getCurrentListMap!3745 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!971771 () Bool)

(declare-fun res!650568 () Bool)

(assert (=> b!971771 (=> (not res!650568) (not e!547804))))

(declare-datatypes ((List!20271 0))(
  ( (Nil!20268) (Cons!20267 (h!21429 (_ BitVec 64)) (t!28650 List!20271)) )
))
(declare-fun arrayNoDuplicates!0 (array!60375 (_ BitVec 32) List!20271) Bool)

(assert (=> b!971771 (= res!650568 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20268))))

(declare-fun b!971772 () Bool)

(declare-fun res!650569 () Bool)

(assert (=> b!971772 (=> (not res!650569) (not e!547804))))

(assert (=> b!971772 (= res!650569 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29527 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29527 _keys!1717))))))

(declare-fun mapIsEmpty!35266 () Bool)

(assert (=> mapIsEmpty!35266 mapRes!35266))

(declare-fun b!971773 () Bool)

(declare-fun res!650565 () Bool)

(assert (=> b!971773 (=> (not res!650565) (not e!547804))))

(assert (=> b!971773 (= res!650565 (and (= (size!29526 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29527 _keys!1717) (size!29526 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun res!650566 () Bool)

(assert (=> start!83308 (=> (not res!650566) (not e!547804))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83308 (= res!650566 (validMask!0 mask!2147))))

(assert (=> start!83308 e!547804))

(assert (=> start!83308 true))

(declare-fun e!547809 () Bool)

(declare-fun array_inv!22369 (array!60373) Bool)

(assert (=> start!83308 (and (array_inv!22369 _values!1425) e!547809)))

(assert (=> start!83308 tp_is_empty!22171))

(assert (=> start!83308 tp!67099))

(declare-fun array_inv!22370 (array!60375) Bool)

(assert (=> start!83308 (array_inv!22370 _keys!1717)))

(declare-fun b!971774 () Bool)

(declare-fun res!650564 () Bool)

(assert (=> b!971774 (=> (not res!650564) (not e!547804))))

(declare-fun contains!5610 (ListLongMap!13089 (_ BitVec 64)) Bool)

(assert (=> b!971774 (= res!650564 (contains!5610 (getCurrentListMap!3745 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29047 _keys!1717) i!822)))))

(declare-fun b!971775 () Bool)

(assert (=> b!971775 (= e!547807 tp_is_empty!22171)))

(declare-fun b!971776 () Bool)

(assert (=> b!971776 (= e!547809 (and e!547806 mapRes!35266))))

(declare-fun condMapEmpty!35266 () Bool)

(declare-fun mapDefault!35266 () ValueCell!10604)

