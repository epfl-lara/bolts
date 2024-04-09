; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82792 () Bool)

(assert start!82792)

(declare-fun b_free!18897 () Bool)

(declare-fun b_next!18897 () Bool)

(assert (=> start!82792 (= b_free!18897 (not b_next!18897))))

(declare-fun tp!65812 () Bool)

(declare-fun b_and!30403 () Bool)

(assert (=> start!82792 (= tp!65812 b_and!30403)))

(declare-fun b!965204 () Bool)

(declare-fun e!544142 () Bool)

(declare-fun tp_is_empty!21699 () Bool)

(assert (=> b!965204 (= e!544142 tp_is_empty!21699)))

(declare-fun b!965205 () Bool)

(declare-fun e!544144 () Bool)

(assert (=> b!965205 (= e!544144 tp_is_empty!21699)))

(declare-fun mapIsEmpty!34543 () Bool)

(declare-fun mapRes!34543 () Bool)

(assert (=> mapIsEmpty!34543 mapRes!34543))

(declare-fun mapNonEmpty!34543 () Bool)

(declare-fun tp!65811 () Bool)

(assert (=> mapNonEmpty!34543 (= mapRes!34543 (and tp!65811 e!544144))))

(declare-datatypes ((V!33915 0))(
  ( (V!33916 (val!10900 Int)) )
))
(declare-datatypes ((ValueCell!10368 0))(
  ( (ValueCellFull!10368 (v!13458 V!33915)) (EmptyCell!10368) )
))
(declare-datatypes ((array!59463 0))(
  ( (array!59464 (arr!28596 (Array (_ BitVec 32) ValueCell!10368)) (size!29076 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59463)

(declare-fun mapValue!34543 () ValueCell!10368)

(declare-fun mapKey!34543 () (_ BitVec 32))

(declare-fun mapRest!34543 () (Array (_ BitVec 32) ValueCell!10368))

(assert (=> mapNonEmpty!34543 (= (arr!28596 _values!1400) (store mapRest!34543 mapKey!34543 mapValue!34543))))

(declare-fun b!965206 () Bool)

(declare-fun e!544140 () Bool)

(assert (=> b!965206 (= e!544140 false)))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((array!59465 0))(
  ( (array!59466 (arr!28597 (Array (_ BitVec 32) (_ BitVec 64))) (size!29077 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59465)

(declare-fun minValue!1342 () V!33915)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun lt!431175 () Bool)

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!33915)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14092 0))(
  ( (tuple2!14093 (_1!7056 (_ BitVec 64)) (_2!7056 V!33915)) )
))
(declare-datatypes ((List!19969 0))(
  ( (Nil!19966) (Cons!19965 (h!21127 tuple2!14092) (t!28340 List!19969)) )
))
(declare-datatypes ((ListLongMap!12803 0))(
  ( (ListLongMap!12804 (toList!6417 List!19969)) )
))
(declare-fun contains!5471 (ListLongMap!12803 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3602 (array!59465 array!59463 (_ BitVec 32) (_ BitVec 32) V!33915 V!33915 (_ BitVec 32) Int) ListLongMap!12803)

(assert (=> b!965206 (= lt!431175 (contains!5471 (getCurrentListMap!3602 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28597 _keys!1686) i!803)))))

(declare-fun b!965208 () Bool)

(declare-fun res!646197 () Bool)

(assert (=> b!965208 (=> (not res!646197) (not e!544140))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59465 (_ BitVec 32)) Bool)

(assert (=> b!965208 (= res!646197 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!965209 () Bool)

(declare-fun res!646196 () Bool)

(assert (=> b!965209 (=> (not res!646196) (not e!544140))))

(declare-datatypes ((List!19970 0))(
  ( (Nil!19967) (Cons!19966 (h!21128 (_ BitVec 64)) (t!28341 List!19970)) )
))
(declare-fun arrayNoDuplicates!0 (array!59465 (_ BitVec 32) List!19970) Bool)

(assert (=> b!965209 (= res!646196 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19967))))

(declare-fun b!965210 () Bool)

(declare-fun e!544141 () Bool)

(assert (=> b!965210 (= e!544141 (and e!544142 mapRes!34543))))

(declare-fun condMapEmpty!34543 () Bool)

(declare-fun mapDefault!34543 () ValueCell!10368)

(assert (=> b!965210 (= condMapEmpty!34543 (= (arr!28596 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10368)) mapDefault!34543)))))

(declare-fun b!965211 () Bool)

(declare-fun res!646198 () Bool)

(assert (=> b!965211 (=> (not res!646198) (not e!544140))))

(assert (=> b!965211 (= res!646198 (and (= (size!29076 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29077 _keys!1686) (size!29076 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!965212 () Bool)

(declare-fun res!646194 () Bool)

(assert (=> b!965212 (=> (not res!646194) (not e!544140))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!965212 (= res!646194 (validKeyInArray!0 (select (arr!28597 _keys!1686) i!803)))))

(declare-fun b!965207 () Bool)

(declare-fun res!646195 () Bool)

(assert (=> b!965207 (=> (not res!646195) (not e!544140))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!965207 (= res!646195 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29077 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29077 _keys!1686))))))

(declare-fun res!646199 () Bool)

(assert (=> start!82792 (=> (not res!646199) (not e!544140))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82792 (= res!646199 (validMask!0 mask!2110))))

(assert (=> start!82792 e!544140))

(assert (=> start!82792 true))

(declare-fun array_inv!22051 (array!59463) Bool)

(assert (=> start!82792 (and (array_inv!22051 _values!1400) e!544141)))

(declare-fun array_inv!22052 (array!59465) Bool)

(assert (=> start!82792 (array_inv!22052 _keys!1686)))

(assert (=> start!82792 tp!65812))

(assert (=> start!82792 tp_is_empty!21699))

(assert (= (and start!82792 res!646199) b!965211))

(assert (= (and b!965211 res!646198) b!965208))

(assert (= (and b!965208 res!646197) b!965209))

(assert (= (and b!965209 res!646196) b!965207))

(assert (= (and b!965207 res!646195) b!965212))

(assert (= (and b!965212 res!646194) b!965206))

(assert (= (and b!965210 condMapEmpty!34543) mapIsEmpty!34543))

(assert (= (and b!965210 (not condMapEmpty!34543)) mapNonEmpty!34543))

(get-info :version)

(assert (= (and mapNonEmpty!34543 ((_ is ValueCellFull!10368) mapValue!34543)) b!965205))

(assert (= (and b!965210 ((_ is ValueCellFull!10368) mapDefault!34543)) b!965204))

(assert (= start!82792 b!965210))

(declare-fun m!894405 () Bool)

(assert (=> start!82792 m!894405))

(declare-fun m!894407 () Bool)

(assert (=> start!82792 m!894407))

(declare-fun m!894409 () Bool)

(assert (=> start!82792 m!894409))

(declare-fun m!894411 () Bool)

(assert (=> b!965209 m!894411))

(declare-fun m!894413 () Bool)

(assert (=> b!965212 m!894413))

(assert (=> b!965212 m!894413))

(declare-fun m!894415 () Bool)

(assert (=> b!965212 m!894415))

(declare-fun m!894417 () Bool)

(assert (=> b!965206 m!894417))

(assert (=> b!965206 m!894413))

(assert (=> b!965206 m!894417))

(assert (=> b!965206 m!894413))

(declare-fun m!894419 () Bool)

(assert (=> b!965206 m!894419))

(declare-fun m!894421 () Bool)

(assert (=> mapNonEmpty!34543 m!894421))

(declare-fun m!894423 () Bool)

(assert (=> b!965208 m!894423))

(check-sat (not b!965208) (not b!965206) (not b_next!18897) (not start!82792) (not b!965209) (not mapNonEmpty!34543) b_and!30403 (not b!965212) tp_is_empty!21699)
(check-sat b_and!30403 (not b_next!18897))
