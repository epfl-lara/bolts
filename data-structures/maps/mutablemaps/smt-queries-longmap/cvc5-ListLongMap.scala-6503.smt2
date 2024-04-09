; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82886 () Bool)

(assert start!82886)

(declare-fun b_free!18985 () Bool)

(declare-fun b_next!18985 () Bool)

(assert (=> start!82886 (= b_free!18985 (not b_next!18985))))

(declare-fun tp!66085 () Bool)

(declare-fun b_and!30491 () Bool)

(assert (=> start!82886 (= tp!66085 b_and!30491)))

(declare-fun mapNonEmpty!34684 () Bool)

(declare-fun mapRes!34684 () Bool)

(declare-fun tp!66084 () Bool)

(declare-fun e!544848 () Bool)

(assert (=> mapNonEmpty!34684 (= mapRes!34684 (and tp!66084 e!544848))))

(declare-datatypes ((V!34041 0))(
  ( (V!34042 (val!10947 Int)) )
))
(declare-datatypes ((ValueCell!10415 0))(
  ( (ValueCellFull!10415 (v!13505 V!34041)) (EmptyCell!10415) )
))
(declare-fun mapRest!34684 () (Array (_ BitVec 32) ValueCell!10415))

(declare-datatypes ((array!59649 0))(
  ( (array!59650 (arr!28689 (Array (_ BitVec 32) ValueCell!10415)) (size!29169 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59649)

(declare-fun mapKey!34684 () (_ BitVec 32))

(declare-fun mapValue!34684 () ValueCell!10415)

(assert (=> mapNonEmpty!34684 (= (arr!28689 _values!1400) (store mapRest!34684 mapKey!34684 mapValue!34684))))

(declare-fun b!966473 () Bool)

(declare-fun res!647041 () Bool)

(declare-fun e!544845 () Bool)

(assert (=> b!966473 (=> (not res!647041) (not e!544845))))

(declare-datatypes ((array!59651 0))(
  ( (array!59652 (arr!28690 (Array (_ BitVec 32) (_ BitVec 64))) (size!29170 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59651)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!966473 (= res!647041 (validKeyInArray!0 (select (arr!28690 _keys!1686) i!803)))))

(declare-fun mapIsEmpty!34684 () Bool)

(assert (=> mapIsEmpty!34684 mapRes!34684))

(declare-fun b!966474 () Bool)

(declare-fun res!647040 () Bool)

(assert (=> b!966474 (=> (not res!647040) (not e!544845))))

(declare-datatypes ((List!20039 0))(
  ( (Nil!20036) (Cons!20035 (h!21197 (_ BitVec 64)) (t!28410 List!20039)) )
))
(declare-fun arrayNoDuplicates!0 (array!59651 (_ BitVec 32) List!20039) Bool)

(assert (=> b!966474 (= res!647040 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20036))))

(declare-fun b!966476 () Bool)

(declare-fun e!544846 () Bool)

(declare-fun tp_is_empty!21793 () Bool)

(assert (=> b!966476 (= e!544846 tp_is_empty!21793)))

(declare-fun b!966477 () Bool)

(assert (=> b!966477 (= e!544845 false)))

(declare-fun minValue!1342 () V!34041)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun lt!431289 () Bool)

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!34041)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14164 0))(
  ( (tuple2!14165 (_1!7092 (_ BitVec 64)) (_2!7092 V!34041)) )
))
(declare-datatypes ((List!20040 0))(
  ( (Nil!20037) (Cons!20036 (h!21198 tuple2!14164) (t!28411 List!20040)) )
))
(declare-datatypes ((ListLongMap!12875 0))(
  ( (ListLongMap!12876 (toList!6453 List!20040)) )
))
(declare-fun contains!5504 (ListLongMap!12875 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3638 (array!59651 array!59649 (_ BitVec 32) (_ BitVec 32) V!34041 V!34041 (_ BitVec 32) Int) ListLongMap!12875)

(assert (=> b!966477 (= lt!431289 (contains!5504 (getCurrentListMap!3638 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28690 _keys!1686) i!803)))))

(declare-fun b!966478 () Bool)

(declare-fun res!647044 () Bool)

(assert (=> b!966478 (=> (not res!647044) (not e!544845))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59651 (_ BitVec 32)) Bool)

(assert (=> b!966478 (= res!647044 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!966479 () Bool)

(declare-fun res!647045 () Bool)

(assert (=> b!966479 (=> (not res!647045) (not e!544845))))

(assert (=> b!966479 (= res!647045 (and (= (size!29169 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29170 _keys!1686) (size!29169 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun res!647042 () Bool)

(assert (=> start!82886 (=> (not res!647042) (not e!544845))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82886 (= res!647042 (validMask!0 mask!2110))))

(assert (=> start!82886 e!544845))

(assert (=> start!82886 true))

(declare-fun e!544847 () Bool)

(declare-fun array_inv!22119 (array!59649) Bool)

(assert (=> start!82886 (and (array_inv!22119 _values!1400) e!544847)))

(declare-fun array_inv!22120 (array!59651) Bool)

(assert (=> start!82886 (array_inv!22120 _keys!1686)))

(assert (=> start!82886 tp!66085))

(assert (=> start!82886 tp_is_empty!21793))

(declare-fun b!966475 () Bool)

(declare-fun res!647043 () Bool)

(assert (=> b!966475 (=> (not res!647043) (not e!544845))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!966475 (= res!647043 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29170 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29170 _keys!1686))))))

(declare-fun b!966480 () Bool)

(assert (=> b!966480 (= e!544847 (and e!544846 mapRes!34684))))

(declare-fun condMapEmpty!34684 () Bool)

(declare-fun mapDefault!34684 () ValueCell!10415)

