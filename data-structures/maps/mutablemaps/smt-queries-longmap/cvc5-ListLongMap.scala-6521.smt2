; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82994 () Bool)

(assert start!82994)

(declare-fun b_free!19093 () Bool)

(declare-fun b_next!19093 () Bool)

(assert (=> start!82994 (= b_free!19093 (not b_next!19093))))

(declare-fun tp!66409 () Bool)

(declare-fun b_and!30599 () Bool)

(assert (=> start!82994 (= tp!66409 b_and!30599)))

(declare-fun b!968242 () Bool)

(declare-fun res!648329 () Bool)

(declare-fun e!545676 () Bool)

(assert (=> b!968242 (=> (not res!648329) (not e!545676))))

(declare-datatypes ((array!59853 0))(
  ( (array!59854 (arr!28791 (Array (_ BitVec 32) (_ BitVec 64))) (size!29271 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59853)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59853 (_ BitVec 32)) Bool)

(assert (=> b!968242 (= res!648329 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun mapNonEmpty!34846 () Bool)

(declare-fun mapRes!34846 () Bool)

(declare-fun tp!66408 () Bool)

(declare-fun e!545677 () Bool)

(assert (=> mapNonEmpty!34846 (= mapRes!34846 (and tp!66408 e!545677))))

(declare-datatypes ((V!34185 0))(
  ( (V!34186 (val!11001 Int)) )
))
(declare-datatypes ((ValueCell!10469 0))(
  ( (ValueCellFull!10469 (v!13559 V!34185)) (EmptyCell!10469) )
))
(declare-datatypes ((array!59855 0))(
  ( (array!59856 (arr!28792 (Array (_ BitVec 32) ValueCell!10469)) (size!29272 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59855)

(declare-fun mapRest!34846 () (Array (_ BitVec 32) ValueCell!10469))

(declare-fun mapKey!34846 () (_ BitVec 32))

(declare-fun mapValue!34846 () ValueCell!10469)

(assert (=> mapNonEmpty!34846 (= (arr!28792 _values!1400) (store mapRest!34846 mapKey!34846 mapValue!34846))))

(declare-fun b!968243 () Bool)

(declare-fun tp_is_empty!21901 () Bool)

(assert (=> b!968243 (= e!545677 tp_is_empty!21901)))

(declare-fun b!968244 () Bool)

(declare-fun res!648322 () Bool)

(assert (=> b!968244 (=> (not res!648322) (not e!545676))))

(declare-datatypes ((List!20114 0))(
  ( (Nil!20111) (Cons!20110 (h!21272 (_ BitVec 64)) (t!28485 List!20114)) )
))
(declare-fun arrayNoDuplicates!0 (array!59853 (_ BitVec 32) List!20114) Bool)

(assert (=> b!968244 (= res!648322 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20111))))

(declare-fun b!968245 () Bool)

(declare-fun res!648324 () Bool)

(assert (=> b!968245 (=> (not res!648324) (not e!545676))))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!968245 (= res!648324 (bvsle from!2084 newFrom!159))))

(declare-fun b!968246 () Bool)

(declare-fun res!648326 () Bool)

(assert (=> b!968246 (=> (not res!648326) (not e!545676))))

(declare-fun minValue!1342 () V!34185)

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!34185)

(declare-datatypes ((tuple2!14244 0))(
  ( (tuple2!14245 (_1!7132 (_ BitVec 64)) (_2!7132 V!34185)) )
))
(declare-datatypes ((List!20115 0))(
  ( (Nil!20112) (Cons!20111 (h!21273 tuple2!14244) (t!28486 List!20115)) )
))
(declare-datatypes ((ListLongMap!12955 0))(
  ( (ListLongMap!12956 (toList!6493 List!20115)) )
))
(declare-fun contains!5544 (ListLongMap!12955 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3678 (array!59853 array!59855 (_ BitVec 32) (_ BitVec 32) V!34185 V!34185 (_ BitVec 32) Int) ListLongMap!12955)

(assert (=> b!968246 (= res!648326 (contains!5544 (getCurrentListMap!3678 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28791 _keys!1686) i!803)))))

(declare-fun b!968247 () Bool)

(declare-fun e!545674 () Bool)

(assert (=> b!968247 (= e!545674 tp_is_empty!21901)))

(declare-fun b!968248 () Bool)

(assert (=> b!968248 (= e!545676 (not (contains!5544 (getCurrentListMap!3678 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 newFrom!159 defaultEntry!1403) (select (arr!28791 _keys!1686) i!803))))))

(declare-fun b!968241 () Bool)

(declare-fun res!648323 () Bool)

(assert (=> b!968241 (=> (not res!648323) (not e!545676))))

(assert (=> b!968241 (= res!648323 (and (= (size!29272 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29271 _keys!1686) (size!29272 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun res!648327 () Bool)

(assert (=> start!82994 (=> (not res!648327) (not e!545676))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82994 (= res!648327 (validMask!0 mask!2110))))

(assert (=> start!82994 e!545676))

(assert (=> start!82994 true))

(declare-fun e!545675 () Bool)

(declare-fun array_inv!22183 (array!59855) Bool)

(assert (=> start!82994 (and (array_inv!22183 _values!1400) e!545675)))

(declare-fun array_inv!22184 (array!59853) Bool)

(assert (=> start!82994 (array_inv!22184 _keys!1686)))

(assert (=> start!82994 tp!66409))

(assert (=> start!82994 tp_is_empty!21901))

(declare-fun b!968249 () Bool)

(declare-fun res!648325 () Bool)

(assert (=> b!968249 (=> (not res!648325) (not e!545676))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!968249 (= res!648325 (validKeyInArray!0 (select (arr!28791 _keys!1686) i!803)))))

(declare-fun mapIsEmpty!34846 () Bool)

(assert (=> mapIsEmpty!34846 mapRes!34846))

(declare-fun b!968250 () Bool)

(assert (=> b!968250 (= e!545675 (and e!545674 mapRes!34846))))

(declare-fun condMapEmpty!34846 () Bool)

(declare-fun mapDefault!34846 () ValueCell!10469)

