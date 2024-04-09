; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83362 () Bool)

(assert start!83362)

(declare-fun b_free!19327 () Bool)

(declare-fun b_next!19327 () Bool)

(assert (=> start!83362 (= b_free!19327 (not b_next!19327))))

(declare-fun tp!67261 () Bool)

(declare-fun b_and!30893 () Bool)

(assert (=> start!83362 (= tp!67261 b_and!30893)))

(declare-fun b!972711 () Bool)

(declare-fun res!651210 () Bool)

(declare-fun e!548292 () Bool)

(assert (=> b!972711 (=> (not res!651210) (not e!548292))))

(declare-datatypes ((array!60477 0))(
  ( (array!60478 (arr!29098 (Array (_ BitVec 32) (_ BitVec 64))) (size!29578 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60477)

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60477 (_ BitVec 32)) Bool)

(assert (=> b!972711 (= res!651210 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!972713 () Bool)

(declare-fun e!548293 () Bool)

(assert (=> b!972713 (= e!548293 (not true))))

(declare-datatypes ((V!34617 0))(
  ( (V!34618 (val!11163 Int)) )
))
(declare-datatypes ((tuple2!14422 0))(
  ( (tuple2!14423 (_1!7221 (_ BitVec 64)) (_2!7221 V!34617)) )
))
(declare-datatypes ((List!20309 0))(
  ( (Nil!20306) (Cons!20305 (h!21467 tuple2!14422) (t!28742 List!20309)) )
))
(declare-datatypes ((ListLongMap!13133 0))(
  ( (ListLongMap!13134 (toList!6582 List!20309)) )
))
(declare-fun lt!432102 () ListLongMap!13133)

(declare-fun lt!432100 () tuple2!14422)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun contains!5629 (ListLongMap!13133 (_ BitVec 64)) Bool)

(declare-fun +!2856 (ListLongMap!13133 tuple2!14422) ListLongMap!13133)

(assert (=> b!972713 (contains!5629 (+!2856 lt!432102 lt!432100) (select (arr!29098 _keys!1717) i!822))))

(declare-fun lt!432098 () V!34617)

(declare-datatypes ((Unit!32373 0))(
  ( (Unit!32374) )
))
(declare-fun lt!432097 () Unit!32373)

(declare-fun lt!432099 () (_ BitVec 64))

(declare-fun addStillContains!595 (ListLongMap!13133 (_ BitVec 64) V!34617 (_ BitVec 64)) Unit!32373)

(assert (=> b!972713 (= lt!432097 (addStillContains!595 lt!432102 lt!432099 lt!432098 (select (arr!29098 _keys!1717) i!822)))))

(declare-datatypes ((ValueCell!10631 0))(
  ( (ValueCellFull!10631 (v!13722 V!34617)) (EmptyCell!10631) )
))
(declare-datatypes ((array!60479 0))(
  ( (array!60480 (arr!29099 (Array (_ BitVec 32) ValueCell!10631)) (size!29579 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60479)

(declare-fun zeroValue!1367 () V!34617)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34617)

(declare-fun lt!432103 () ListLongMap!13133)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun getCurrentListMap!3767 (array!60477 array!60479 (_ BitVec 32) (_ BitVec 32) V!34617 V!34617 (_ BitVec 32) Int) ListLongMap!13133)

(assert (=> b!972713 (= lt!432103 (+!2856 (getCurrentListMap!3767 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvadd #b00000000000000000000000000000001 (bvsub from!2118 #b00000000000000000000000000000001)) defaultEntry!1428) lt!432100))))

(assert (=> b!972713 (= lt!432100 (tuple2!14423 lt!432099 lt!432098))))

(declare-fun get!15101 (ValueCell!10631 V!34617) V!34617)

(declare-fun dynLambda!1695 (Int (_ BitVec 64)) V!34617)

(assert (=> b!972713 (= lt!432098 (get!15101 (select (arr!29099 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1695 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!432101 () Unit!32373)

(declare-fun lemmaListMapRecursiveValidKeyArray!267 (array!60477 array!60479 (_ BitVec 32) (_ BitVec 32) V!34617 V!34617 (_ BitVec 32) Int) Unit!32373)

(assert (=> b!972713 (= lt!432101 (lemmaListMapRecursiveValidKeyArray!267 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!972714 () Bool)

(declare-fun res!651213 () Bool)

(assert (=> b!972714 (=> (not res!651213) (not e!548292))))

(assert (=> b!972714 (= res!651213 (and (= (size!29579 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29578 _keys!1717) (size!29579 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!972715 () Bool)

(declare-fun e!548298 () Bool)

(assert (=> b!972715 (= e!548292 e!548298)))

(declare-fun res!651211 () Bool)

(assert (=> b!972715 (=> (not res!651211) (not e!548298))))

(assert (=> b!972715 (= res!651211 (contains!5629 lt!432102 (select (arr!29098 _keys!1717) i!822)))))

(assert (=> b!972715 (= lt!432102 (getCurrentListMap!3767 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428))))

(declare-fun b!972716 () Bool)

(declare-fun e!548297 () Bool)

(declare-fun tp_is_empty!22225 () Bool)

(assert (=> b!972716 (= e!548297 tp_is_empty!22225)))

(declare-fun b!972717 () Bool)

(declare-fun e!548295 () Bool)

(declare-fun e!548294 () Bool)

(declare-fun mapRes!35347 () Bool)

(assert (=> b!972717 (= e!548295 (and e!548294 mapRes!35347))))

(declare-fun condMapEmpty!35347 () Bool)

(declare-fun mapDefault!35347 () ValueCell!10631)

