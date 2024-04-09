; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83206 () Bool)

(assert start!83206)

(declare-fun b_free!19171 () Bool)

(declare-fun b_next!19171 () Bool)

(assert (=> start!83206 (= b_free!19171 (not b_next!19171))))

(declare-fun tp!66792 () Bool)

(declare-fun b_and!30677 () Bool)

(assert (=> start!83206 (= tp!66792 b_and!30677)))

(declare-fun b!970262 () Bool)

(declare-fun res!649523 () Bool)

(declare-fun e!547028 () Bool)

(assert (=> b!970262 (=> (not res!649523) (not e!547028))))

(declare-datatypes ((array!60179 0))(
  ( (array!60180 (arr!28949 (Array (_ BitVec 32) (_ BitVec 64))) (size!29429 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60179)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!970262 (= res!649523 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29429 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29429 _keys!1717))))))

(declare-fun b!970263 () Bool)

(declare-fun res!649524 () Bool)

(assert (=> b!970263 (=> (not res!649524) (not e!547028))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60179 (_ BitVec 32)) Bool)

(assert (=> b!970263 (= res!649524 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!970264 () Bool)

(declare-fun e!547032 () Bool)

(declare-fun tp_is_empty!22069 () Bool)

(assert (=> b!970264 (= e!547032 tp_is_empty!22069)))

(declare-fun res!649528 () Bool)

(assert (=> start!83206 (=> (not res!649528) (not e!547028))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83206 (= res!649528 (validMask!0 mask!2147))))

(assert (=> start!83206 e!547028))

(assert (=> start!83206 true))

(declare-datatypes ((V!34409 0))(
  ( (V!34410 (val!11085 Int)) )
))
(declare-datatypes ((ValueCell!10553 0))(
  ( (ValueCellFull!10553 (v!13644 V!34409)) (EmptyCell!10553) )
))
(declare-datatypes ((array!60181 0))(
  ( (array!60182 (arr!28950 (Array (_ BitVec 32) ValueCell!10553)) (size!29430 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60181)

(declare-fun e!547029 () Bool)

(declare-fun array_inv!22295 (array!60181) Bool)

(assert (=> start!83206 (and (array_inv!22295 _values!1425) e!547029)))

(assert (=> start!83206 tp_is_empty!22069))

(assert (=> start!83206 tp!66792))

(declare-fun array_inv!22296 (array!60179) Bool)

(assert (=> start!83206 (array_inv!22296 _keys!1717)))

(declare-fun mapNonEmpty!35113 () Bool)

(declare-fun mapRes!35113 () Bool)

(declare-fun tp!66793 () Bool)

(assert (=> mapNonEmpty!35113 (= mapRes!35113 (and tp!66793 e!547032))))

(declare-fun mapRest!35113 () (Array (_ BitVec 32) ValueCell!10553))

(declare-fun mapValue!35113 () ValueCell!10553)

(declare-fun mapKey!35113 () (_ BitVec 32))

(assert (=> mapNonEmpty!35113 (= (arr!28950 _values!1425) (store mapRest!35113 mapKey!35113 mapValue!35113))))

(declare-fun b!970265 () Bool)

(declare-fun res!649526 () Bool)

(assert (=> b!970265 (=> (not res!649526) (not e!547028))))

(declare-datatypes ((List!20193 0))(
  ( (Nil!20190) (Cons!20189 (h!21351 (_ BitVec 64)) (t!28564 List!20193)) )
))
(declare-fun arrayNoDuplicates!0 (array!60179 (_ BitVec 32) List!20193) Bool)

(assert (=> b!970265 (= res!649526 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20190))))

(declare-fun b!970266 () Bool)

(declare-fun e!547030 () Bool)

(assert (=> b!970266 (= e!547030 tp_is_empty!22069)))

(declare-fun mapIsEmpty!35113 () Bool)

(assert (=> mapIsEmpty!35113 mapRes!35113))

(declare-fun b!970267 () Bool)

(declare-fun res!649527 () Bool)

(assert (=> b!970267 (=> (not res!649527) (not e!547028))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!970267 (= res!649527 (validKeyInArray!0 (select (arr!28949 _keys!1717) i!822)))))

(declare-fun b!970268 () Bool)

(declare-fun res!649525 () Bool)

(assert (=> b!970268 (=> (not res!649525) (not e!547028))))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!970268 (= res!649525 (and (= (size!29430 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29429 _keys!1717) (size!29430 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!970269 () Bool)

(assert (=> b!970269 (= e!547028 false)))

(declare-fun zeroValue!1367 () V!34409)

(declare-fun lt!431680 () Bool)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34409)

(declare-datatypes ((tuple2!14302 0))(
  ( (tuple2!14303 (_1!7161 (_ BitVec 64)) (_2!7161 V!34409)) )
))
(declare-datatypes ((List!20194 0))(
  ( (Nil!20191) (Cons!20190 (h!21352 tuple2!14302) (t!28565 List!20194)) )
))
(declare-datatypes ((ListLongMap!13013 0))(
  ( (ListLongMap!13014 (toList!6522 List!20194)) )
))
(declare-fun contains!5577 (ListLongMap!13013 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3707 (array!60179 array!60181 (_ BitVec 32) (_ BitVec 32) V!34409 V!34409 (_ BitVec 32) Int) ListLongMap!13013)

(assert (=> b!970269 (= lt!431680 (contains!5577 (getCurrentListMap!3707 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!28949 _keys!1717) i!822)))))

(declare-fun b!970270 () Bool)

(assert (=> b!970270 (= e!547029 (and e!547030 mapRes!35113))))

(declare-fun condMapEmpty!35113 () Bool)

(declare-fun mapDefault!35113 () ValueCell!10553)

