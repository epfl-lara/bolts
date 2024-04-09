; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83348 () Bool)

(assert start!83348)

(declare-fun b_free!19313 () Bool)

(declare-fun b_next!19313 () Bool)

(assert (=> start!83348 (= b_free!19313 (not b_next!19313))))

(declare-fun tp!67218 () Bool)

(declare-fun b_and!30865 () Bool)

(assert (=> start!83348 (= tp!67218 b_and!30865)))

(declare-fun b!972466 () Bool)

(declare-fun e!548164 () Bool)

(assert (=> b!972466 (= e!548164 (not true))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34597 0))(
  ( (V!34598 (val!11156 Int)) )
))
(declare-datatypes ((tuple2!14412 0))(
  ( (tuple2!14413 (_1!7216 (_ BitVec 64)) (_2!7216 V!34597)) )
))
(declare-datatypes ((List!20299 0))(
  ( (Nil!20296) (Cons!20295 (h!21457 tuple2!14412) (t!28718 List!20299)) )
))
(declare-datatypes ((ListLongMap!13123 0))(
  ( (ListLongMap!13124 (toList!6577 List!20299)) )
))
(declare-fun lt!432027 () ListLongMap!13123)

(declare-fun zeroValue!1367 () V!34597)

(declare-fun lt!432026 () (_ BitVec 64))

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34597)

(declare-datatypes ((ValueCell!10624 0))(
  ( (ValueCellFull!10624 (v!13715 V!34597)) (EmptyCell!10624) )
))
(declare-datatypes ((array!60449 0))(
  ( (array!60450 (arr!29084 (Array (_ BitVec 32) ValueCell!10624)) (size!29564 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60449)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60451 0))(
  ( (array!60452 (arr!29085 (Array (_ BitVec 32) (_ BitVec 64))) (size!29565 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60451)

(declare-fun +!2852 (ListLongMap!13123 tuple2!14412) ListLongMap!13123)

(declare-fun getCurrentListMap!3762 (array!60451 array!60449 (_ BitVec 32) (_ BitVec 32) V!34597 V!34597 (_ BitVec 32) Int) ListLongMap!13123)

(declare-fun get!15091 (ValueCell!10624 V!34597) V!34597)

(declare-fun dynLambda!1691 (Int (_ BitVec 64)) V!34597)

(assert (=> b!972466 (= lt!432027 (+!2852 (getCurrentListMap!3762 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvadd #b00000000000000000000000000000001 (bvsub from!2118 #b00000000000000000000000000000001)) defaultEntry!1428) (tuple2!14413 lt!432026 (get!15091 (select (arr!29084 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1691 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!32365 0))(
  ( (Unit!32366) )
))
(declare-fun lt!432028 () Unit!32365)

(declare-fun lemmaListMapRecursiveValidKeyArray!263 (array!60451 array!60449 (_ BitVec 32) (_ BitVec 32) V!34597 V!34597 (_ BitVec 32) Int) Unit!32365)

(assert (=> b!972466 (= lt!432028 (lemmaListMapRecursiveValidKeyArray!263 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!972467 () Bool)

(declare-fun res!651043 () Bool)

(declare-fun e!548169 () Bool)

(assert (=> b!972467 (=> (not res!651043) (not e!548169))))

(declare-datatypes ((List!20300 0))(
  ( (Nil!20297) (Cons!20296 (h!21458 (_ BitVec 64)) (t!28719 List!20300)) )
))
(declare-fun arrayNoDuplicates!0 (array!60451 (_ BitVec 32) List!20300) Bool)

(assert (=> b!972467 (= res!651043 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20297))))

(declare-fun b!972468 () Bool)

(declare-fun res!651048 () Bool)

(assert (=> b!972468 (=> (not res!651048) (not e!548169))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60451 (_ BitVec 32)) Bool)

(assert (=> b!972468 (= res!651048 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!972469 () Bool)

(declare-fun res!651045 () Bool)

(assert (=> b!972469 (=> (not res!651045) (not e!548169))))

(assert (=> b!972469 (= res!651045 (and (= (size!29564 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29565 _keys!1717) (size!29564 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!972470 () Bool)

(declare-fun res!651044 () Bool)

(assert (=> b!972470 (=> (not res!651044) (not e!548169))))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!972470 (= res!651044 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29565 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29565 _keys!1717))))))

(declare-fun b!972472 () Bool)

(assert (=> b!972472 (= e!548169 e!548164)))

(declare-fun res!651042 () Bool)

(assert (=> b!972472 (=> (not res!651042) (not e!548164))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!972472 (= res!651042 (validKeyInArray!0 lt!432026))))

(assert (=> b!972472 (= lt!432026 (select (arr!29085 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(assert (=> b!972472 (= lt!432027 (getCurrentListMap!3762 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!972473 () Bool)

(declare-fun e!548166 () Bool)

(declare-fun tp_is_empty!22211 () Bool)

(assert (=> b!972473 (= e!548166 tp_is_empty!22211)))

(declare-fun b!972474 () Bool)

(declare-fun e!548165 () Bool)

(assert (=> b!972474 (= e!548165 tp_is_empty!22211)))

(declare-fun b!972475 () Bool)

(declare-fun e!548168 () Bool)

(declare-fun mapRes!35326 () Bool)

(assert (=> b!972475 (= e!548168 (and e!548166 mapRes!35326))))

(declare-fun condMapEmpty!35326 () Bool)

(declare-fun mapDefault!35326 () ValueCell!10624)

