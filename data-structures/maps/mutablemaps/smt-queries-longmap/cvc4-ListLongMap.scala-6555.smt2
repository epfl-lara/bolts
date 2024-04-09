; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83246 () Bool)

(assert start!83246)

(declare-fun b_free!19211 () Bool)

(declare-fun b_next!19211 () Bool)

(assert (=> start!83246 (= b_free!19211 (not b_next!19211))))

(declare-fun tp!66913 () Bool)

(declare-fun b_and!30717 () Bool)

(assert (=> start!83246 (= tp!66913 b_and!30717)))

(declare-fun mapNonEmpty!35173 () Bool)

(declare-fun mapRes!35173 () Bool)

(declare-fun tp!66912 () Bool)

(declare-fun e!547330 () Bool)

(assert (=> mapNonEmpty!35173 (= mapRes!35173 (and tp!66912 e!547330))))

(declare-fun mapKey!35173 () (_ BitVec 32))

(declare-datatypes ((V!34461 0))(
  ( (V!34462 (val!11105 Int)) )
))
(declare-datatypes ((ValueCell!10573 0))(
  ( (ValueCellFull!10573 (v!13664 V!34461)) (EmptyCell!10573) )
))
(declare-datatypes ((array!60251 0))(
  ( (array!60252 (arr!28985 (Array (_ BitVec 32) ValueCell!10573)) (size!29465 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60251)

(declare-fun mapRest!35173 () (Array (_ BitVec 32) ValueCell!10573))

(declare-fun mapValue!35173 () ValueCell!10573)

(assert (=> mapNonEmpty!35173 (= (arr!28985 _values!1425) (store mapRest!35173 mapKey!35173 mapValue!35173))))

(declare-fun b!970819 () Bool)

(declare-fun res!649903 () Bool)

(declare-fun e!547329 () Bool)

(assert (=> b!970819 (=> (not res!649903) (not e!547329))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60253 0))(
  ( (array!60254 (arr!28986 (Array (_ BitVec 32) (_ BitVec 64))) (size!29466 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60253)

(assert (=> b!970819 (= res!649903 (and (= (size!29465 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29466 _keys!1717) (size!29465 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!970820 () Bool)

(declare-fun tp_is_empty!22109 () Bool)

(assert (=> b!970820 (= e!547330 tp_is_empty!22109)))

(declare-fun b!970821 () Bool)

(declare-fun res!649902 () Bool)

(assert (=> b!970821 (=> (not res!649902) (not e!547329))))

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!970821 (= res!649902 (validKeyInArray!0 (select (arr!28986 _keys!1717) i!822)))))

(declare-fun mapIsEmpty!35173 () Bool)

(assert (=> mapIsEmpty!35173 mapRes!35173))

(declare-fun b!970822 () Bool)

(declare-fun res!649900 () Bool)

(assert (=> b!970822 (=> (not res!649900) (not e!547329))))

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34461)

(declare-fun zeroValue!1367 () V!34461)

(declare-datatypes ((tuple2!14330 0))(
  ( (tuple2!14331 (_1!7175 (_ BitVec 64)) (_2!7175 V!34461)) )
))
(declare-datatypes ((List!20221 0))(
  ( (Nil!20218) (Cons!20217 (h!21379 tuple2!14330) (t!28592 List!20221)) )
))
(declare-datatypes ((ListLongMap!13041 0))(
  ( (ListLongMap!13042 (toList!6536 List!20221)) )
))
(declare-fun contains!5591 (ListLongMap!13041 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3721 (array!60253 array!60251 (_ BitVec 32) (_ BitVec 32) V!34461 V!34461 (_ BitVec 32) Int) ListLongMap!13041)

(assert (=> b!970822 (= res!649900 (contains!5591 (getCurrentListMap!3721 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!28986 _keys!1717) i!822)))))

(declare-fun b!970823 () Bool)

(declare-fun res!649901 () Bool)

(assert (=> b!970823 (=> (not res!649901) (not e!547329))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60253 (_ BitVec 32)) Bool)

(assert (=> b!970823 (= res!649901 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!970824 () Bool)

(declare-fun res!649904 () Bool)

(assert (=> b!970824 (=> (not res!649904) (not e!547329))))

(declare-datatypes ((List!20222 0))(
  ( (Nil!20219) (Cons!20218 (h!21380 (_ BitVec 64)) (t!28593 List!20222)) )
))
(declare-fun arrayNoDuplicates!0 (array!60253 (_ BitVec 32) List!20222) Bool)

(assert (=> b!970824 (= res!649904 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20219))))

(declare-fun b!970825 () Bool)

(assert (=> b!970825 (= e!547329 false)))

(declare-fun lt!431731 () ListLongMap!13041)

(assert (=> b!970825 (= lt!431731 (getCurrentListMap!3721 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!970826 () Bool)

(declare-fun e!547332 () Bool)

(declare-fun e!547331 () Bool)

(assert (=> b!970826 (= e!547332 (and e!547331 mapRes!35173))))

(declare-fun condMapEmpty!35173 () Bool)

(declare-fun mapDefault!35173 () ValueCell!10573)

