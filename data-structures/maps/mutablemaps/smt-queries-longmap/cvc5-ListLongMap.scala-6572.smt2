; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83344 () Bool)

(assert start!83344)

(declare-fun b_free!19309 () Bool)

(declare-fun b_next!19309 () Bool)

(assert (=> start!83344 (= b_free!19309 (not b_next!19309))))

(declare-fun tp!67206 () Bool)

(declare-fun b_and!30857 () Bool)

(assert (=> start!83344 (= tp!67206 b_and!30857)))

(declare-fun b!972397 () Bool)

(declare-fun e!548128 () Bool)

(assert (=> b!972397 (= e!548128 (not true))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34593 0))(
  ( (V!34594 (val!11154 Int)) )
))
(declare-datatypes ((tuple2!14408 0))(
  ( (tuple2!14409 (_1!7214 (_ BitVec 64)) (_2!7214 V!34593)) )
))
(declare-datatypes ((List!20296 0))(
  ( (Nil!20293) (Cons!20292 (h!21454 tuple2!14408) (t!28711 List!20296)) )
))
(declare-datatypes ((ListLongMap!13119 0))(
  ( (ListLongMap!13120 (toList!6575 List!20296)) )
))
(declare-fun lt!432010 () ListLongMap!13119)

(declare-datatypes ((ValueCell!10622 0))(
  ( (ValueCellFull!10622 (v!13713 V!34593)) (EmptyCell!10622) )
))
(declare-datatypes ((array!60441 0))(
  ( (array!60442 (arr!29080 (Array (_ BitVec 32) ValueCell!10622)) (size!29560 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60441)

(declare-fun zeroValue!1367 () V!34593)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun lt!432008 () (_ BitVec 64))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60443 0))(
  ( (array!60444 (arr!29081 (Array (_ BitVec 32) (_ BitVec 64))) (size!29561 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60443)

(declare-fun minValue!1367 () V!34593)

(declare-fun +!2850 (ListLongMap!13119 tuple2!14408) ListLongMap!13119)

(declare-fun getCurrentListMap!3760 (array!60443 array!60441 (_ BitVec 32) (_ BitVec 32) V!34593 V!34593 (_ BitVec 32) Int) ListLongMap!13119)

(declare-fun get!15089 (ValueCell!10622 V!34593) V!34593)

(declare-fun dynLambda!1689 (Int (_ BitVec 64)) V!34593)

(assert (=> b!972397 (= lt!432010 (+!2850 (getCurrentListMap!3760 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvadd #b00000000000000000000000000000001 (bvsub from!2118 #b00000000000000000000000000000001)) defaultEntry!1428) (tuple2!14409 lt!432008 (get!15089 (select (arr!29080 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1689 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!32361 0))(
  ( (Unit!32362) )
))
(declare-fun lt!432009 () Unit!32361)

(declare-fun lemmaListMapRecursiveValidKeyArray!261 (array!60443 array!60441 (_ BitVec 32) (_ BitVec 32) V!34593 V!34593 (_ BitVec 32) Int) Unit!32361)

(assert (=> b!972397 (= lt!432009 (lemmaListMapRecursiveValidKeyArray!261 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!972398 () Bool)

(declare-fun res!651001 () Bool)

(declare-fun e!548129 () Bool)

(assert (=> b!972398 (=> (not res!651001) (not e!548129))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60443 (_ BitVec 32)) Bool)

(assert (=> b!972398 (= res!651001 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!972399 () Bool)

(declare-fun res!650994 () Bool)

(assert (=> b!972399 (=> (not res!650994) (not e!548129))))

(declare-fun i!822 () (_ BitVec 32))

(declare-fun contains!5623 (ListLongMap!13119 (_ BitVec 64)) Bool)

(assert (=> b!972399 (= res!650994 (contains!5623 (getCurrentListMap!3760 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29081 _keys!1717) i!822)))))

(declare-fun b!972400 () Bool)

(declare-fun res!650997 () Bool)

(assert (=> b!972400 (=> (not res!650997) (not e!548129))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!972400 (= res!650997 (validKeyInArray!0 (select (arr!29081 _keys!1717) i!822)))))

(declare-fun mapIsEmpty!35320 () Bool)

(declare-fun mapRes!35320 () Bool)

(assert (=> mapIsEmpty!35320 mapRes!35320))

(declare-fun mapNonEmpty!35320 () Bool)

(declare-fun tp!67207 () Bool)

(declare-fun e!548130 () Bool)

(assert (=> mapNonEmpty!35320 (= mapRes!35320 (and tp!67207 e!548130))))

(declare-fun mapKey!35320 () (_ BitVec 32))

(declare-fun mapValue!35320 () ValueCell!10622)

(declare-fun mapRest!35320 () (Array (_ BitVec 32) ValueCell!10622))

(assert (=> mapNonEmpty!35320 (= (arr!29080 _values!1425) (store mapRest!35320 mapKey!35320 mapValue!35320))))

(declare-fun b!972401 () Bool)

(declare-fun tp_is_empty!22207 () Bool)

(assert (=> b!972401 (= e!548130 tp_is_empty!22207)))

(declare-fun b!972402 () Bool)

(declare-fun e!548131 () Bool)

(assert (=> b!972402 (= e!548131 tp_is_empty!22207)))

(declare-fun b!972403 () Bool)

(declare-fun res!650998 () Bool)

(assert (=> b!972403 (=> (not res!650998) (not e!548129))))

(assert (=> b!972403 (= res!650998 (and (= (size!29560 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29561 _keys!1717) (size!29560 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!972404 () Bool)

(declare-fun res!651000 () Bool)

(assert (=> b!972404 (=> (not res!651000) (not e!548129))))

(assert (=> b!972404 (= res!651000 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29561 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29561 _keys!1717))))))

(declare-fun res!650999 () Bool)

(assert (=> start!83344 (=> (not res!650999) (not e!548129))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83344 (= res!650999 (validMask!0 mask!2147))))

(assert (=> start!83344 e!548129))

(assert (=> start!83344 true))

(declare-fun e!548133 () Bool)

(declare-fun array_inv!22393 (array!60441) Bool)

(assert (=> start!83344 (and (array_inv!22393 _values!1425) e!548133)))

(assert (=> start!83344 tp_is_empty!22207))

(assert (=> start!83344 tp!67206))

(declare-fun array_inv!22394 (array!60443) Bool)

(assert (=> start!83344 (array_inv!22394 _keys!1717)))

(declare-fun b!972396 () Bool)

(assert (=> b!972396 (= e!548129 e!548128)))

(declare-fun res!650995 () Bool)

(assert (=> b!972396 (=> (not res!650995) (not e!548128))))

(assert (=> b!972396 (= res!650995 (validKeyInArray!0 lt!432008))))

(assert (=> b!972396 (= lt!432008 (select (arr!29081 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(assert (=> b!972396 (= lt!432010 (getCurrentListMap!3760 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!972405 () Bool)

(assert (=> b!972405 (= e!548133 (and e!548131 mapRes!35320))))

(declare-fun condMapEmpty!35320 () Bool)

(declare-fun mapDefault!35320 () ValueCell!10622)

