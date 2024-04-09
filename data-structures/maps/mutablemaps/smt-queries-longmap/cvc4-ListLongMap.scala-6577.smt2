; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83378 () Bool)

(assert start!83378)

(declare-fun b_free!19343 () Bool)

(declare-fun b_next!19343 () Bool)

(assert (=> start!83378 (= b_free!19343 (not b_next!19343))))

(declare-fun tp!67308 () Bool)

(declare-fun b_and!30925 () Bool)

(assert (=> start!83378 (= tp!67308 b_and!30925)))

(declare-fun b!972991 () Bool)

(declare-fun res!651408 () Bool)

(declare-fun e!548465 () Bool)

(assert (=> b!972991 (=> (not res!651408) (not e!548465))))

(declare-datatypes ((array!60507 0))(
  ( (array!60508 (arr!29113 (Array (_ BitVec 32) (_ BitVec 64))) (size!29593 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60507)

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60507 (_ BitVec 32)) Bool)

(assert (=> b!972991 (= res!651408 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!972992 () Bool)

(declare-fun e!548462 () Bool)

(assert (=> b!972992 (= e!548465 e!548462)))

(declare-fun res!651406 () Bool)

(assert (=> b!972992 (=> (not res!651406) (not e!548462))))

(declare-datatypes ((V!34637 0))(
  ( (V!34638 (val!11171 Int)) )
))
(declare-datatypes ((tuple2!14436 0))(
  ( (tuple2!14437 (_1!7228 (_ BitVec 64)) (_2!7228 V!34637)) )
))
(declare-datatypes ((List!20320 0))(
  ( (Nil!20317) (Cons!20316 (h!21478 tuple2!14436) (t!28769 List!20320)) )
))
(declare-datatypes ((ListLongMap!13147 0))(
  ( (ListLongMap!13148 (toList!6589 List!20320)) )
))
(declare-fun lt!432269 () ListLongMap!13147)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun contains!5635 (ListLongMap!13147 (_ BitVec 64)) Bool)

(assert (=> b!972992 (= res!651406 (contains!5635 lt!432269 (select (arr!29113 _keys!1717) i!822)))))

(declare-datatypes ((ValueCell!10639 0))(
  ( (ValueCellFull!10639 (v!13730 V!34637)) (EmptyCell!10639) )
))
(declare-datatypes ((array!60509 0))(
  ( (array!60510 (arr!29114 (Array (_ BitVec 32) ValueCell!10639)) (size!29594 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60509)

(declare-fun zeroValue!1367 () V!34637)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34637)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun getCurrentListMap!3774 (array!60507 array!60509 (_ BitVec 32) (_ BitVec 32) V!34637 V!34637 (_ BitVec 32) Int) ListLongMap!13147)

(assert (=> b!972992 (= lt!432269 (getCurrentListMap!3774 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428))))

(declare-fun b!972993 () Bool)

(declare-fun res!651404 () Bool)

(assert (=> b!972993 (=> (not res!651404) (not e!548465))))

(assert (=> b!972993 (= res!651404 (and (= (size!29594 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29593 _keys!1717) (size!29594 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!972994 () Bool)

(declare-fun e!548460 () Bool)

(declare-fun tp_is_empty!22241 () Bool)

(assert (=> b!972994 (= e!548460 tp_is_empty!22241)))

(declare-fun mapNonEmpty!35371 () Bool)

(declare-fun mapRes!35371 () Bool)

(declare-fun tp!67309 () Bool)

(assert (=> mapNonEmpty!35371 (= mapRes!35371 (and tp!67309 e!548460))))

(declare-fun mapKey!35371 () (_ BitVec 32))

(declare-fun mapRest!35371 () (Array (_ BitVec 32) ValueCell!10639))

(declare-fun mapValue!35371 () ValueCell!10639)

(assert (=> mapNonEmpty!35371 (= (arr!29114 _values!1425) (store mapRest!35371 mapKey!35371 mapValue!35371))))

(declare-fun res!651402 () Bool)

(assert (=> start!83378 (=> (not res!651402) (not e!548465))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83378 (= res!651402 (validMask!0 mask!2147))))

(assert (=> start!83378 e!548465))

(assert (=> start!83378 true))

(declare-fun e!548461 () Bool)

(declare-fun array_inv!22419 (array!60509) Bool)

(assert (=> start!83378 (and (array_inv!22419 _values!1425) e!548461)))

(assert (=> start!83378 tp_is_empty!22241))

(assert (=> start!83378 tp!67308))

(declare-fun array_inv!22420 (array!60507) Bool)

(assert (=> start!83378 (array_inv!22420 _keys!1717)))

(declare-fun b!972995 () Bool)

(declare-fun res!651407 () Bool)

(assert (=> b!972995 (=> (not res!651407) (not e!548465))))

(declare-datatypes ((List!20321 0))(
  ( (Nil!20318) (Cons!20317 (h!21479 (_ BitVec 64)) (t!28770 List!20321)) )
))
(declare-fun arrayNoDuplicates!0 (array!60507 (_ BitVec 32) List!20321) Bool)

(assert (=> b!972995 (= res!651407 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20318))))

(declare-fun b!972996 () Bool)

(declare-fun e!548464 () Bool)

(assert (=> b!972996 (= e!548464 tp_is_empty!22241)))

(declare-fun b!972997 () Bool)

(declare-fun e!548466 () Bool)

(assert (=> b!972997 (= e!548462 e!548466)))

(declare-fun res!651405 () Bool)

(assert (=> b!972997 (=> (not res!651405) (not e!548466))))

(declare-fun lt!432271 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!972997 (= res!651405 (validKeyInArray!0 lt!432271))))

(assert (=> b!972997 (= lt!432271 (select (arr!29113 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(declare-fun lt!432266 () ListLongMap!13147)

(assert (=> b!972997 (= lt!432266 (getCurrentListMap!3774 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!972998 () Bool)

(declare-fun res!651403 () Bool)

(assert (=> b!972998 (=> (not res!651403) (not e!548465))))

(assert (=> b!972998 (= res!651403 (validKeyInArray!0 (select (arr!29113 _keys!1717) i!822)))))

(declare-fun b!972999 () Bool)

(declare-fun res!651409 () Bool)

(assert (=> b!972999 (=> (not res!651409) (not e!548465))))

(assert (=> b!972999 (= res!651409 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29593 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29593 _keys!1717))))))

(declare-fun mapIsEmpty!35371 () Bool)

(assert (=> mapIsEmpty!35371 mapRes!35371))

(declare-fun b!973000 () Bool)

(assert (=> b!973000 (= e!548466 (not true))))

(declare-fun lt!432265 () tuple2!14436)

(declare-fun +!2862 (ListLongMap!13147 tuple2!14436) ListLongMap!13147)

(assert (=> b!973000 (contains!5635 (+!2862 lt!432269 lt!432265) (select (arr!29113 _keys!1717) i!822))))

(declare-datatypes ((Unit!32385 0))(
  ( (Unit!32386) )
))
(declare-fun lt!432267 () Unit!32385)

(declare-fun lt!432268 () V!34637)

(declare-fun addStillContains!601 (ListLongMap!13147 (_ BitVec 64) V!34637 (_ BitVec 64)) Unit!32385)

(assert (=> b!973000 (= lt!432267 (addStillContains!601 lt!432269 lt!432271 lt!432268 (select (arr!29113 _keys!1717) i!822)))))

(assert (=> b!973000 (= lt!432266 (+!2862 (getCurrentListMap!3774 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvadd #b00000000000000000000000000000001 (bvsub from!2118 #b00000000000000000000000000000001)) defaultEntry!1428) lt!432265))))

(assert (=> b!973000 (= lt!432265 (tuple2!14437 lt!432271 lt!432268))))

(declare-fun get!15111 (ValueCell!10639 V!34637) V!34637)

(declare-fun dynLambda!1701 (Int (_ BitVec 64)) V!34637)

(assert (=> b!973000 (= lt!432268 (get!15111 (select (arr!29114 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1701 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!432270 () Unit!32385)

(declare-fun lemmaListMapRecursiveValidKeyArray!273 (array!60507 array!60509 (_ BitVec 32) (_ BitVec 32) V!34637 V!34637 (_ BitVec 32) Int) Unit!32385)

(assert (=> b!973000 (= lt!432270 (lemmaListMapRecursiveValidKeyArray!273 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!973001 () Bool)

(assert (=> b!973001 (= e!548461 (and e!548464 mapRes!35371))))

(declare-fun condMapEmpty!35371 () Bool)

(declare-fun mapDefault!35371 () ValueCell!10639)

