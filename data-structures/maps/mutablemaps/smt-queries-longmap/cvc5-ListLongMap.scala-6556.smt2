; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83248 () Bool)

(assert start!83248)

(declare-fun b_free!19213 () Bool)

(declare-fun b_next!19213 () Bool)

(assert (=> start!83248 (= b_free!19213 (not b_next!19213))))

(declare-fun tp!66919 () Bool)

(declare-fun b_and!30719 () Bool)

(assert (=> start!83248 (= tp!66919 b_and!30719)))

(declare-fun b!970849 () Bool)

(declare-fun res!649924 () Bool)

(declare-fun e!547347 () Bool)

(assert (=> b!970849 (=> (not res!649924) (not e!547347))))

(declare-datatypes ((array!60255 0))(
  ( (array!60256 (arr!28987 (Array (_ BitVec 32) (_ BitVec 64))) (size!29467 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60255)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!970849 (= res!649924 (validKeyInArray!0 (select (arr!28987 _keys!1717) i!822)))))

(declare-fun mapNonEmpty!35176 () Bool)

(declare-fun mapRes!35176 () Bool)

(declare-fun tp!66918 () Bool)

(declare-fun e!547343 () Bool)

(assert (=> mapNonEmpty!35176 (= mapRes!35176 (and tp!66918 e!547343))))

(declare-datatypes ((V!34465 0))(
  ( (V!34466 (val!11106 Int)) )
))
(declare-datatypes ((ValueCell!10574 0))(
  ( (ValueCellFull!10574 (v!13665 V!34465)) (EmptyCell!10574) )
))
(declare-fun mapValue!35176 () ValueCell!10574)

(declare-fun mapRest!35176 () (Array (_ BitVec 32) ValueCell!10574))

(declare-datatypes ((array!60257 0))(
  ( (array!60258 (arr!28988 (Array (_ BitVec 32) ValueCell!10574)) (size!29468 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60257)

(declare-fun mapKey!35176 () (_ BitVec 32))

(assert (=> mapNonEmpty!35176 (= (arr!28988 _values!1425) (store mapRest!35176 mapKey!35176 mapValue!35176))))

(declare-fun b!970850 () Bool)

(declare-fun res!649926 () Bool)

(assert (=> b!970850 (=> (not res!649926) (not e!547347))))

(declare-fun from!2118 () (_ BitVec 32))

(assert (=> b!970850 (= res!649926 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29467 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29467 _keys!1717))))))

(declare-fun b!970851 () Bool)

(declare-fun res!649927 () Bool)

(assert (=> b!970851 (=> (not res!649927) (not e!547347))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun zeroValue!1367 () V!34465)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34465)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((tuple2!14332 0))(
  ( (tuple2!14333 (_1!7176 (_ BitVec 64)) (_2!7176 V!34465)) )
))
(declare-datatypes ((List!20223 0))(
  ( (Nil!20220) (Cons!20219 (h!21381 tuple2!14332) (t!28594 List!20223)) )
))
(declare-datatypes ((ListLongMap!13043 0))(
  ( (ListLongMap!13044 (toList!6537 List!20223)) )
))
(declare-fun contains!5592 (ListLongMap!13043 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3722 (array!60255 array!60257 (_ BitVec 32) (_ BitVec 32) V!34465 V!34465 (_ BitVec 32) Int) ListLongMap!13043)

(assert (=> b!970851 (= res!649927 (contains!5592 (getCurrentListMap!3722 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!28987 _keys!1717) i!822)))))

(declare-fun b!970852 () Bool)

(assert (=> b!970852 (= e!547347 false)))

(declare-fun lt!431734 () ListLongMap!13043)

(assert (=> b!970852 (= lt!431734 (getCurrentListMap!3722 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!970853 () Bool)

(declare-fun tp_is_empty!22111 () Bool)

(assert (=> b!970853 (= e!547343 tp_is_empty!22111)))

(declare-fun res!649922 () Bool)

(assert (=> start!83248 (=> (not res!649922) (not e!547347))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83248 (= res!649922 (validMask!0 mask!2147))))

(assert (=> start!83248 e!547347))

(assert (=> start!83248 true))

(declare-fun e!547346 () Bool)

(declare-fun array_inv!22325 (array!60257) Bool)

(assert (=> start!83248 (and (array_inv!22325 _values!1425) e!547346)))

(assert (=> start!83248 tp_is_empty!22111))

(assert (=> start!83248 tp!66919))

(declare-fun array_inv!22326 (array!60255) Bool)

(assert (=> start!83248 (array_inv!22326 _keys!1717)))

(declare-fun b!970854 () Bool)

(declare-fun res!649923 () Bool)

(assert (=> b!970854 (=> (not res!649923) (not e!547347))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60255 (_ BitVec 32)) Bool)

(assert (=> b!970854 (= res!649923 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!970855 () Bool)

(declare-fun res!649921 () Bool)

(assert (=> b!970855 (=> (not res!649921) (not e!547347))))

(declare-datatypes ((List!20224 0))(
  ( (Nil!20221) (Cons!20220 (h!21382 (_ BitVec 64)) (t!28595 List!20224)) )
))
(declare-fun arrayNoDuplicates!0 (array!60255 (_ BitVec 32) List!20224) Bool)

(assert (=> b!970855 (= res!649921 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20221))))

(declare-fun b!970856 () Bool)

(declare-fun e!547345 () Bool)

(assert (=> b!970856 (= e!547346 (and e!547345 mapRes!35176))))

(declare-fun condMapEmpty!35176 () Bool)

(declare-fun mapDefault!35176 () ValueCell!10574)

