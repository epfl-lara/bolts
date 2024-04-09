; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82848 () Bool)

(assert start!82848)

(declare-fun b_free!18947 () Bool)

(declare-fun b_next!18947 () Bool)

(assert (=> start!82848 (= b_free!18947 (not b_next!18947))))

(declare-fun tp!65970 () Bool)

(declare-fun b_and!30453 () Bool)

(assert (=> start!82848 (= tp!65970 b_and!30453)))

(declare-fun mapNonEmpty!34627 () Bool)

(declare-fun mapRes!34627 () Bool)

(declare-fun tp!65971 () Bool)

(declare-fun e!544560 () Bool)

(assert (=> mapNonEmpty!34627 (= mapRes!34627 (and tp!65971 e!544560))))

(declare-fun mapKey!34627 () (_ BitVec 32))

(declare-datatypes ((V!33989 0))(
  ( (V!33990 (val!10928 Int)) )
))
(declare-datatypes ((ValueCell!10396 0))(
  ( (ValueCellFull!10396 (v!13486 V!33989)) (EmptyCell!10396) )
))
(declare-fun mapValue!34627 () ValueCell!10396)

(declare-fun mapRest!34627 () (Array (_ BitVec 32) ValueCell!10396))

(declare-datatypes ((array!59573 0))(
  ( (array!59574 (arr!28651 (Array (_ BitVec 32) ValueCell!10396)) (size!29131 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59573)

(assert (=> mapNonEmpty!34627 (= (arr!28651 _values!1400) (store mapRest!34627 mapKey!34627 mapValue!34627))))

(declare-fun b!965951 () Bool)

(declare-fun res!646694 () Bool)

(declare-fun e!544561 () Bool)

(assert (=> b!965951 (=> (not res!646694) (not e!544561))))

(declare-datatypes ((array!59575 0))(
  ( (array!59576 (arr!28652 (Array (_ BitVec 32) (_ BitVec 64))) (size!29132 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59575)

(declare-datatypes ((List!20011 0))(
  ( (Nil!20008) (Cons!20007 (h!21169 (_ BitVec 64)) (t!28382 List!20011)) )
))
(declare-fun arrayNoDuplicates!0 (array!59575 (_ BitVec 32) List!20011) Bool)

(assert (=> b!965951 (= res!646694 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20008))))

(declare-fun b!965952 () Bool)

(assert (=> b!965952 (= e!544561 false)))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun lt!431241 () Bool)

(declare-fun minValue!1342 () V!33989)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!33989)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14134 0))(
  ( (tuple2!14135 (_1!7077 (_ BitVec 64)) (_2!7077 V!33989)) )
))
(declare-datatypes ((List!20012 0))(
  ( (Nil!20009) (Cons!20008 (h!21170 tuple2!14134) (t!28383 List!20012)) )
))
(declare-datatypes ((ListLongMap!12845 0))(
  ( (ListLongMap!12846 (toList!6438 List!20012)) )
))
(declare-fun contains!5489 (ListLongMap!12845 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3623 (array!59575 array!59573 (_ BitVec 32) (_ BitVec 32) V!33989 V!33989 (_ BitVec 32) Int) ListLongMap!12845)

(assert (=> b!965952 (= lt!431241 (contains!5489 (getCurrentListMap!3623 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28652 _keys!1686) i!803)))))

(declare-fun res!646692 () Bool)

(assert (=> start!82848 (=> (not res!646692) (not e!544561))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82848 (= res!646692 (validMask!0 mask!2110))))

(assert (=> start!82848 e!544561))

(assert (=> start!82848 true))

(declare-fun e!544562 () Bool)

(declare-fun array_inv!22093 (array!59573) Bool)

(assert (=> start!82848 (and (array_inv!22093 _values!1400) e!544562)))

(declare-fun array_inv!22094 (array!59575) Bool)

(assert (=> start!82848 (array_inv!22094 _keys!1686)))

(assert (=> start!82848 tp!65970))

(declare-fun tp_is_empty!21755 () Bool)

(assert (=> start!82848 tp_is_empty!21755))

(declare-fun b!965953 () Bool)

(assert (=> b!965953 (= e!544560 tp_is_empty!21755)))

(declare-fun mapIsEmpty!34627 () Bool)

(assert (=> mapIsEmpty!34627 mapRes!34627))

(declare-fun b!965954 () Bool)

(declare-fun res!646693 () Bool)

(assert (=> b!965954 (=> (not res!646693) (not e!544561))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!965954 (= res!646693 (validKeyInArray!0 (select (arr!28652 _keys!1686) i!803)))))

(declare-fun b!965955 () Bool)

(declare-fun e!544563 () Bool)

(assert (=> b!965955 (= e!544562 (and e!544563 mapRes!34627))))

(declare-fun condMapEmpty!34627 () Bool)

(declare-fun mapDefault!34627 () ValueCell!10396)

