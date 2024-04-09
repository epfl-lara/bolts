; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82896 () Bool)

(assert start!82896)

(declare-fun b_free!18995 () Bool)

(declare-fun b_next!18995 () Bool)

(assert (=> start!82896 (= b_free!18995 (not b_next!18995))))

(declare-fun tp!66115 () Bool)

(declare-fun b_and!30501 () Bool)

(assert (=> start!82896 (= tp!66115 b_and!30501)))

(declare-fun b!966608 () Bool)

(declare-fun e!544924 () Bool)

(assert (=> b!966608 (= e!544924 false)))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun lt!431304 () Bool)

(declare-datatypes ((V!34053 0))(
  ( (V!34054 (val!10952 Int)) )
))
(declare-datatypes ((ValueCell!10420 0))(
  ( (ValueCellFull!10420 (v!13510 V!34053)) (EmptyCell!10420) )
))
(declare-datatypes ((array!59669 0))(
  ( (array!59670 (arr!28699 (Array (_ BitVec 32) ValueCell!10420)) (size!29179 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59669)

(declare-datatypes ((array!59671 0))(
  ( (array!59672 (arr!28700 (Array (_ BitVec 32) (_ BitVec 64))) (size!29180 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59671)

(declare-fun minValue!1342 () V!34053)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!34053)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14172 0))(
  ( (tuple2!14173 (_1!7096 (_ BitVec 64)) (_2!7096 V!34053)) )
))
(declare-datatypes ((List!20048 0))(
  ( (Nil!20045) (Cons!20044 (h!21206 tuple2!14172) (t!28419 List!20048)) )
))
(declare-datatypes ((ListLongMap!12883 0))(
  ( (ListLongMap!12884 (toList!6457 List!20048)) )
))
(declare-fun contains!5508 (ListLongMap!12883 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3642 (array!59671 array!59669 (_ BitVec 32) (_ BitVec 32) V!34053 V!34053 (_ BitVec 32) Int) ListLongMap!12883)

(assert (=> b!966608 (= lt!431304 (contains!5508 (getCurrentListMap!3642 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28700 _keys!1686) i!803)))))

(declare-fun mapNonEmpty!34699 () Bool)

(declare-fun mapRes!34699 () Bool)

(declare-fun tp!66114 () Bool)

(declare-fun e!544923 () Bool)

(assert (=> mapNonEmpty!34699 (= mapRes!34699 (and tp!66114 e!544923))))

(declare-fun mapKey!34699 () (_ BitVec 32))

(declare-fun mapRest!34699 () (Array (_ BitVec 32) ValueCell!10420))

(declare-fun mapValue!34699 () ValueCell!10420)

(assert (=> mapNonEmpty!34699 (= (arr!28699 _values!1400) (store mapRest!34699 mapKey!34699 mapValue!34699))))

(declare-fun res!647135 () Bool)

(assert (=> start!82896 (=> (not res!647135) (not e!544924))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82896 (= res!647135 (validMask!0 mask!2110))))

(assert (=> start!82896 e!544924))

(assert (=> start!82896 true))

(declare-fun e!544922 () Bool)

(declare-fun array_inv!22125 (array!59669) Bool)

(assert (=> start!82896 (and (array_inv!22125 _values!1400) e!544922)))

(declare-fun array_inv!22126 (array!59671) Bool)

(assert (=> start!82896 (array_inv!22126 _keys!1686)))

(assert (=> start!82896 tp!66115))

(declare-fun tp_is_empty!21803 () Bool)

(assert (=> start!82896 tp_is_empty!21803))

(declare-fun b!966609 () Bool)

(declare-fun res!647131 () Bool)

(assert (=> b!966609 (=> (not res!647131) (not e!544924))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!966609 (= res!647131 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29180 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29180 _keys!1686))))))

(declare-fun b!966610 () Bool)

(declare-fun res!647132 () Bool)

(assert (=> b!966610 (=> (not res!647132) (not e!544924))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59671 (_ BitVec 32)) Bool)

(assert (=> b!966610 (= res!647132 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!966611 () Bool)

(declare-fun res!647133 () Bool)

(assert (=> b!966611 (=> (not res!647133) (not e!544924))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!966611 (= res!647133 (validKeyInArray!0 (select (arr!28700 _keys!1686) i!803)))))

(declare-fun b!966612 () Bool)

(declare-fun e!544921 () Bool)

(assert (=> b!966612 (= e!544921 tp_is_empty!21803)))

(declare-fun b!966613 () Bool)

(declare-fun res!647134 () Bool)

(assert (=> b!966613 (=> (not res!647134) (not e!544924))))

(assert (=> b!966613 (= res!647134 (and (= (size!29179 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29180 _keys!1686) (size!29179 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!34699 () Bool)

(assert (=> mapIsEmpty!34699 mapRes!34699))

(declare-fun b!966614 () Bool)

(assert (=> b!966614 (= e!544923 tp_is_empty!21803)))

(declare-fun b!966615 () Bool)

(declare-fun res!647130 () Bool)

(assert (=> b!966615 (=> (not res!647130) (not e!544924))))

(declare-datatypes ((List!20049 0))(
  ( (Nil!20046) (Cons!20045 (h!21207 (_ BitVec 64)) (t!28420 List!20049)) )
))
(declare-fun arrayNoDuplicates!0 (array!59671 (_ BitVec 32) List!20049) Bool)

(assert (=> b!966615 (= res!647130 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20046))))

(declare-fun b!966616 () Bool)

(assert (=> b!966616 (= e!544922 (and e!544921 mapRes!34699))))

(declare-fun condMapEmpty!34699 () Bool)

(declare-fun mapDefault!34699 () ValueCell!10420)

