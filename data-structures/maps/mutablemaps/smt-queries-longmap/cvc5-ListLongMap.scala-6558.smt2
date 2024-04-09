; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83260 () Bool)

(assert start!83260)

(declare-fun b_free!19225 () Bool)

(declare-fun b_next!19225 () Bool)

(assert (=> start!83260 (= b_free!19225 (not b_next!19225))))

(declare-fun tp!66954 () Bool)

(declare-fun b_and!30731 () Bool)

(assert (=> start!83260 (= tp!66954 b_and!30731)))

(declare-fun b!971029 () Bool)

(declare-fun res!650050 () Bool)

(declare-fun e!547437 () Bool)

(assert (=> b!971029 (=> (not res!650050) (not e!547437))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34481 0))(
  ( (V!34482 (val!11112 Int)) )
))
(declare-datatypes ((ValueCell!10580 0))(
  ( (ValueCellFull!10580 (v!13671 V!34481)) (EmptyCell!10580) )
))
(declare-datatypes ((array!60279 0))(
  ( (array!60280 (arr!28999 (Array (_ BitVec 32) ValueCell!10580)) (size!29479 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60279)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60281 0))(
  ( (array!60282 (arr!29000 (Array (_ BitVec 32) (_ BitVec 64))) (size!29480 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60281)

(assert (=> b!971029 (= res!650050 (and (= (size!29479 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29480 _keys!1717) (size!29479 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!971030 () Bool)

(declare-fun res!650052 () Bool)

(assert (=> b!971030 (=> (not res!650052) (not e!547437))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60281 (_ BitVec 32)) Bool)

(assert (=> b!971030 (= res!650052 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!971031 () Bool)

(declare-fun res!650049 () Bool)

(assert (=> b!971031 (=> (not res!650049) (not e!547437))))

(declare-datatypes ((List!20234 0))(
  ( (Nil!20231) (Cons!20230 (h!21392 (_ BitVec 64)) (t!28605 List!20234)) )
))
(declare-fun arrayNoDuplicates!0 (array!60281 (_ BitVec 32) List!20234) Bool)

(assert (=> b!971031 (= res!650049 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20231))))

(declare-fun mapIsEmpty!35194 () Bool)

(declare-fun mapRes!35194 () Bool)

(assert (=> mapIsEmpty!35194 mapRes!35194))

(declare-fun b!971032 () Bool)

(declare-fun e!547435 () Bool)

(declare-fun tp_is_empty!22123 () Bool)

(assert (=> b!971032 (= e!547435 tp_is_empty!22123)))

(declare-fun res!650053 () Bool)

(assert (=> start!83260 (=> (not res!650053) (not e!547437))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83260 (= res!650053 (validMask!0 mask!2147))))

(assert (=> start!83260 e!547437))

(assert (=> start!83260 true))

(declare-fun e!547433 () Bool)

(declare-fun array_inv!22333 (array!60279) Bool)

(assert (=> start!83260 (and (array_inv!22333 _values!1425) e!547433)))

(assert (=> start!83260 tp_is_empty!22123))

(assert (=> start!83260 tp!66954))

(declare-fun array_inv!22334 (array!60281) Bool)

(assert (=> start!83260 (array_inv!22334 _keys!1717)))

(declare-fun b!971033 () Bool)

(assert (=> b!971033 (= e!547437 false)))

(declare-datatypes ((tuple2!14344 0))(
  ( (tuple2!14345 (_1!7182 (_ BitVec 64)) (_2!7182 V!34481)) )
))
(declare-datatypes ((List!20235 0))(
  ( (Nil!20232) (Cons!20231 (h!21393 tuple2!14344) (t!28606 List!20235)) )
))
(declare-datatypes ((ListLongMap!13055 0))(
  ( (ListLongMap!13056 (toList!6543 List!20235)) )
))
(declare-fun lt!431752 () ListLongMap!13055)

(declare-fun zeroValue!1367 () V!34481)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34481)

(declare-fun getCurrentListMap!3728 (array!60281 array!60279 (_ BitVec 32) (_ BitVec 32) V!34481 V!34481 (_ BitVec 32) Int) ListLongMap!13055)

(assert (=> b!971033 (= lt!431752 (getCurrentListMap!3728 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!971034 () Bool)

(declare-fun e!547436 () Bool)

(assert (=> b!971034 (= e!547433 (and e!547436 mapRes!35194))))

(declare-fun condMapEmpty!35194 () Bool)

(declare-fun mapDefault!35194 () ValueCell!10580)

