; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83258 () Bool)

(assert start!83258)

(declare-fun b_free!19223 () Bool)

(declare-fun b_next!19223 () Bool)

(assert (=> start!83258 (= b_free!19223 (not b_next!19223))))

(declare-fun tp!66949 () Bool)

(declare-fun b_and!30729 () Bool)

(assert (=> start!83258 (= tp!66949 b_and!30729)))

(declare-fun b!970999 () Bool)

(declare-fun res!650027 () Bool)

(declare-fun e!547419 () Bool)

(assert (=> b!970999 (=> (not res!650027) (not e!547419))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34477 0))(
  ( (V!34478 (val!11111 Int)) )
))
(declare-datatypes ((ValueCell!10579 0))(
  ( (ValueCellFull!10579 (v!13670 V!34477)) (EmptyCell!10579) )
))
(declare-datatypes ((array!60275 0))(
  ( (array!60276 (arr!28997 (Array (_ BitVec 32) ValueCell!10579)) (size!29477 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60275)

(declare-fun zeroValue!1367 () V!34477)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34477)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60277 0))(
  ( (array!60278 (arr!28998 (Array (_ BitVec 32) (_ BitVec 64))) (size!29478 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60277)

(declare-datatypes ((tuple2!14342 0))(
  ( (tuple2!14343 (_1!7181 (_ BitVec 64)) (_2!7181 V!34477)) )
))
(declare-datatypes ((List!20232 0))(
  ( (Nil!20229) (Cons!20228 (h!21390 tuple2!14342) (t!28603 List!20232)) )
))
(declare-datatypes ((ListLongMap!13053 0))(
  ( (ListLongMap!13054 (toList!6542 List!20232)) )
))
(declare-fun contains!5596 (ListLongMap!13053 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3727 (array!60277 array!60275 (_ BitVec 32) (_ BitVec 32) V!34477 V!34477 (_ BitVec 32) Int) ListLongMap!13053)

(assert (=> b!970999 (= res!650027 (contains!5596 (getCurrentListMap!3727 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!28998 _keys!1717) i!822)))))

(declare-fun b!971000 () Bool)

(declare-fun e!547421 () Bool)

(declare-fun tp_is_empty!22121 () Bool)

(assert (=> b!971000 (= e!547421 tp_is_empty!22121)))

(declare-fun b!971001 () Bool)

(assert (=> b!971001 (= e!547419 false)))

(declare-fun lt!431749 () ListLongMap!13053)

(assert (=> b!971001 (= lt!431749 (getCurrentListMap!3727 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!971002 () Bool)

(declare-fun res!650026 () Bool)

(assert (=> b!971002 (=> (not res!650026) (not e!547419))))

(assert (=> b!971002 (= res!650026 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29478 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29478 _keys!1717))))))

(declare-fun b!971003 () Bool)

(declare-fun res!650029 () Bool)

(assert (=> b!971003 (=> (not res!650029) (not e!547419))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!971003 (= res!650029 (validKeyInArray!0 (select (arr!28998 _keys!1717) i!822)))))

(declare-fun mapNonEmpty!35191 () Bool)

(declare-fun mapRes!35191 () Bool)

(declare-fun tp!66948 () Bool)

(assert (=> mapNonEmpty!35191 (= mapRes!35191 (and tp!66948 e!547421))))

(declare-fun mapValue!35191 () ValueCell!10579)

(declare-fun mapRest!35191 () (Array (_ BitVec 32) ValueCell!10579))

(declare-fun mapKey!35191 () (_ BitVec 32))

(assert (=> mapNonEmpty!35191 (= (arr!28997 _values!1425) (store mapRest!35191 mapKey!35191 mapValue!35191))))

(declare-fun mapIsEmpty!35191 () Bool)

(assert (=> mapIsEmpty!35191 mapRes!35191))

(declare-fun b!971005 () Bool)

(declare-fun res!650032 () Bool)

(assert (=> b!971005 (=> (not res!650032) (not e!547419))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60277 (_ BitVec 32)) Bool)

(assert (=> b!971005 (= res!650032 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!971006 () Bool)

(declare-fun e!547418 () Bool)

(assert (=> b!971006 (= e!547418 tp_is_empty!22121)))

(declare-fun b!971007 () Bool)

(declare-fun res!650031 () Bool)

(assert (=> b!971007 (=> (not res!650031) (not e!547419))))

(declare-datatypes ((List!20233 0))(
  ( (Nil!20230) (Cons!20229 (h!21391 (_ BitVec 64)) (t!28604 List!20233)) )
))
(declare-fun arrayNoDuplicates!0 (array!60277 (_ BitVec 32) List!20233) Bool)

(assert (=> b!971007 (= res!650031 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20230))))

(declare-fun b!971008 () Bool)

(declare-fun res!650030 () Bool)

(assert (=> b!971008 (=> (not res!650030) (not e!547419))))

(assert (=> b!971008 (= res!650030 (and (= (size!29477 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29478 _keys!1717) (size!29477 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!971004 () Bool)

(declare-fun e!547422 () Bool)

(assert (=> b!971004 (= e!547422 (and e!547418 mapRes!35191))))

(declare-fun condMapEmpty!35191 () Bool)

(declare-fun mapDefault!35191 () ValueCell!10579)

