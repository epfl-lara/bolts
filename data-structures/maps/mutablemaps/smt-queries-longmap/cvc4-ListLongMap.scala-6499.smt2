; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82866 () Bool)

(assert start!82866)

(declare-fun b_free!18965 () Bool)

(declare-fun b_next!18965 () Bool)

(assert (=> start!82866 (= b_free!18965 (not b_next!18965))))

(declare-fun tp!66025 () Bool)

(declare-fun b_and!30471 () Bool)

(assert (=> start!82866 (= tp!66025 b_and!30471)))

(declare-fun b!966194 () Bool)

(declare-fun res!646853 () Bool)

(declare-fun e!544699 () Bool)

(assert (=> b!966194 (=> (not res!646853) (not e!544699))))

(declare-datatypes ((array!59609 0))(
  ( (array!59610 (arr!28669 (Array (_ BitVec 32) (_ BitVec 64))) (size!29149 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59609)

(declare-datatypes ((List!20024 0))(
  ( (Nil!20021) (Cons!20020 (h!21182 (_ BitVec 64)) (t!28395 List!20024)) )
))
(declare-fun arrayNoDuplicates!0 (array!59609 (_ BitVec 32) List!20024) Bool)

(assert (=> b!966194 (= res!646853 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20021))))

(declare-fun b!966195 () Bool)

(declare-fun res!646854 () Bool)

(assert (=> b!966195 (=> (not res!646854) (not e!544699))))

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!966195 (= res!646854 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29149 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29149 _keys!1686))))))

(declare-fun b!966196 () Bool)

(assert (=> b!966196 (= e!544699 false)))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!34013 0))(
  ( (V!34014 (val!10937 Int)) )
))
(declare-datatypes ((ValueCell!10405 0))(
  ( (ValueCellFull!10405 (v!13495 V!34013)) (EmptyCell!10405) )
))
(declare-datatypes ((array!59611 0))(
  ( (array!59612 (arr!28670 (Array (_ BitVec 32) ValueCell!10405)) (size!29150 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59611)

(declare-fun minValue!1342 () V!34013)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun lt!431268 () Bool)

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!34013)

(declare-datatypes ((tuple2!14148 0))(
  ( (tuple2!14149 (_1!7084 (_ BitVec 64)) (_2!7084 V!34013)) )
))
(declare-datatypes ((List!20025 0))(
  ( (Nil!20022) (Cons!20021 (h!21183 tuple2!14148) (t!28396 List!20025)) )
))
(declare-datatypes ((ListLongMap!12859 0))(
  ( (ListLongMap!12860 (toList!6445 List!20025)) )
))
(declare-fun contains!5496 (ListLongMap!12859 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3630 (array!59609 array!59611 (_ BitVec 32) (_ BitVec 32) V!34013 V!34013 (_ BitVec 32) Int) ListLongMap!12859)

(assert (=> b!966196 (= lt!431268 (contains!5496 (getCurrentListMap!3630 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28669 _keys!1686) i!803)))))

(declare-fun b!966197 () Bool)

(declare-fun res!646852 () Bool)

(assert (=> b!966197 (=> (not res!646852) (not e!544699))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!966197 (= res!646852 (validKeyInArray!0 (select (arr!28669 _keys!1686) i!803)))))

(declare-fun b!966198 () Bool)

(declare-fun e!544695 () Bool)

(declare-fun tp_is_empty!21773 () Bool)

(assert (=> b!966198 (= e!544695 tp_is_empty!21773)))

(declare-fun b!966199 () Bool)

(declare-fun res!646856 () Bool)

(assert (=> b!966199 (=> (not res!646856) (not e!544699))))

(assert (=> b!966199 (= res!646856 (and (= (size!29150 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29149 _keys!1686) (size!29150 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun res!646855 () Bool)

(assert (=> start!82866 (=> (not res!646855) (not e!544699))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82866 (= res!646855 (validMask!0 mask!2110))))

(assert (=> start!82866 e!544699))

(assert (=> start!82866 true))

(declare-fun e!544697 () Bool)

(declare-fun array_inv!22107 (array!59611) Bool)

(assert (=> start!82866 (and (array_inv!22107 _values!1400) e!544697)))

(declare-fun array_inv!22108 (array!59609) Bool)

(assert (=> start!82866 (array_inv!22108 _keys!1686)))

(assert (=> start!82866 tp!66025))

(assert (=> start!82866 tp_is_empty!21773))

(declare-fun mapNonEmpty!34654 () Bool)

(declare-fun mapRes!34654 () Bool)

(declare-fun tp!66024 () Bool)

(assert (=> mapNonEmpty!34654 (= mapRes!34654 (and tp!66024 e!544695))))

(declare-fun mapRest!34654 () (Array (_ BitVec 32) ValueCell!10405))

(declare-fun mapKey!34654 () (_ BitVec 32))

(declare-fun mapValue!34654 () ValueCell!10405)

(assert (=> mapNonEmpty!34654 (= (arr!28670 _values!1400) (store mapRest!34654 mapKey!34654 mapValue!34654))))

(declare-fun mapIsEmpty!34654 () Bool)

(assert (=> mapIsEmpty!34654 mapRes!34654))

(declare-fun b!966200 () Bool)

(declare-fun res!646851 () Bool)

(assert (=> b!966200 (=> (not res!646851) (not e!544699))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59609 (_ BitVec 32)) Bool)

(assert (=> b!966200 (= res!646851 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!966201 () Bool)

(declare-fun e!544696 () Bool)

(assert (=> b!966201 (= e!544697 (and e!544696 mapRes!34654))))

(declare-fun condMapEmpty!34654 () Bool)

(declare-fun mapDefault!34654 () ValueCell!10405)

