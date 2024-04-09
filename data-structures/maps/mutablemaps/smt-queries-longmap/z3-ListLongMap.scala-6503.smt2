; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82888 () Bool)

(assert start!82888)

(declare-fun b_free!18987 () Bool)

(declare-fun b_next!18987 () Bool)

(assert (=> start!82888 (= b_free!18987 (not b_next!18987))))

(declare-fun tp!66091 () Bool)

(declare-fun b_and!30493 () Bool)

(assert (=> start!82888 (= tp!66091 b_and!30493)))

(declare-fun b!966500 () Bool)

(declare-fun res!647062 () Bool)

(declare-fun e!544862 () Bool)

(assert (=> b!966500 (=> (not res!647062) (not e!544862))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!34043 0))(
  ( (V!34044 (val!10948 Int)) )
))
(declare-datatypes ((ValueCell!10416 0))(
  ( (ValueCellFull!10416 (v!13506 V!34043)) (EmptyCell!10416) )
))
(declare-datatypes ((array!59653 0))(
  ( (array!59654 (arr!28691 (Array (_ BitVec 32) ValueCell!10416)) (size!29171 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59653)

(declare-datatypes ((array!59655 0))(
  ( (array!59656 (arr!28692 (Array (_ BitVec 32) (_ BitVec 64))) (size!29172 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59655)

(declare-fun mask!2110 () (_ BitVec 32))

(assert (=> b!966500 (= res!647062 (and (= (size!29171 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29172 _keys!1686) (size!29171 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!966501 () Bool)

(declare-fun res!647059 () Bool)

(assert (=> b!966501 (=> (not res!647059) (not e!544862))))

(declare-datatypes ((List!20041 0))(
  ( (Nil!20038) (Cons!20037 (h!21199 (_ BitVec 64)) (t!28412 List!20041)) )
))
(declare-fun arrayNoDuplicates!0 (array!59655 (_ BitVec 32) List!20041) Bool)

(assert (=> b!966501 (= res!647059 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20038))))

(declare-fun b!966502 () Bool)

(assert (=> b!966502 (= e!544862 false)))

(declare-fun lt!431292 () Bool)

(declare-fun minValue!1342 () V!34043)

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!34043)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14166 0))(
  ( (tuple2!14167 (_1!7093 (_ BitVec 64)) (_2!7093 V!34043)) )
))
(declare-datatypes ((List!20042 0))(
  ( (Nil!20039) (Cons!20038 (h!21200 tuple2!14166) (t!28413 List!20042)) )
))
(declare-datatypes ((ListLongMap!12877 0))(
  ( (ListLongMap!12878 (toList!6454 List!20042)) )
))
(declare-fun contains!5505 (ListLongMap!12877 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3639 (array!59655 array!59653 (_ BitVec 32) (_ BitVec 32) V!34043 V!34043 (_ BitVec 32) Int) ListLongMap!12877)

(assert (=> b!966502 (= lt!431292 (contains!5505 (getCurrentListMap!3639 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28692 _keys!1686) i!803)))))

(declare-fun b!966503 () Bool)

(declare-fun e!544864 () Bool)

(declare-fun tp_is_empty!21795 () Bool)

(assert (=> b!966503 (= e!544864 tp_is_empty!21795)))

(declare-fun b!966504 () Bool)

(declare-fun res!647060 () Bool)

(assert (=> b!966504 (=> (not res!647060) (not e!544862))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!966504 (= res!647060 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29172 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29172 _keys!1686))))))

(declare-fun mapNonEmpty!34687 () Bool)

(declare-fun mapRes!34687 () Bool)

(declare-fun tp!66090 () Bool)

(declare-fun e!544860 () Bool)

(assert (=> mapNonEmpty!34687 (= mapRes!34687 (and tp!66090 e!544860))))

(declare-fun mapRest!34687 () (Array (_ BitVec 32) ValueCell!10416))

(declare-fun mapValue!34687 () ValueCell!10416)

(declare-fun mapKey!34687 () (_ BitVec 32))

(assert (=> mapNonEmpty!34687 (= (arr!28691 _values!1400) (store mapRest!34687 mapKey!34687 mapValue!34687))))

(declare-fun b!966505 () Bool)

(assert (=> b!966505 (= e!544860 tp_is_empty!21795)))

(declare-fun res!647063 () Bool)

(assert (=> start!82888 (=> (not res!647063) (not e!544862))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82888 (= res!647063 (validMask!0 mask!2110))))

(assert (=> start!82888 e!544862))

(assert (=> start!82888 true))

(declare-fun e!544861 () Bool)

(declare-fun array_inv!22121 (array!59653) Bool)

(assert (=> start!82888 (and (array_inv!22121 _values!1400) e!544861)))

(declare-fun array_inv!22122 (array!59655) Bool)

(assert (=> start!82888 (array_inv!22122 _keys!1686)))

(assert (=> start!82888 tp!66091))

(assert (=> start!82888 tp_is_empty!21795))

(declare-fun b!966506 () Bool)

(assert (=> b!966506 (= e!544861 (and e!544864 mapRes!34687))))

(declare-fun condMapEmpty!34687 () Bool)

(declare-fun mapDefault!34687 () ValueCell!10416)

(assert (=> b!966506 (= condMapEmpty!34687 (= (arr!28691 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10416)) mapDefault!34687)))))

(declare-fun b!966507 () Bool)

(declare-fun res!647061 () Bool)

(assert (=> b!966507 (=> (not res!647061) (not e!544862))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59655 (_ BitVec 32)) Bool)

(assert (=> b!966507 (= res!647061 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!966508 () Bool)

(declare-fun res!647058 () Bool)

(assert (=> b!966508 (=> (not res!647058) (not e!544862))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!966508 (= res!647058 (validKeyInArray!0 (select (arr!28692 _keys!1686) i!803)))))

(declare-fun mapIsEmpty!34687 () Bool)

(assert (=> mapIsEmpty!34687 mapRes!34687))

(assert (= (and start!82888 res!647063) b!966500))

(assert (= (and b!966500 res!647062) b!966507))

(assert (= (and b!966507 res!647061) b!966501))

(assert (= (and b!966501 res!647059) b!966504))

(assert (= (and b!966504 res!647060) b!966508))

(assert (= (and b!966508 res!647058) b!966502))

(assert (= (and b!966506 condMapEmpty!34687) mapIsEmpty!34687))

(assert (= (and b!966506 (not condMapEmpty!34687)) mapNonEmpty!34687))

(get-info :version)

(assert (= (and mapNonEmpty!34687 ((_ is ValueCellFull!10416) mapValue!34687)) b!966505))

(assert (= (and b!966506 ((_ is ValueCellFull!10416) mapDefault!34687)) b!966503))

(assert (= start!82888 b!966506))

(declare-fun m!895335 () Bool)

(assert (=> b!966507 m!895335))

(declare-fun m!895337 () Bool)

(assert (=> b!966501 m!895337))

(declare-fun m!895339 () Bool)

(assert (=> mapNonEmpty!34687 m!895339))

(declare-fun m!895341 () Bool)

(assert (=> b!966502 m!895341))

(declare-fun m!895343 () Bool)

(assert (=> b!966502 m!895343))

(assert (=> b!966502 m!895341))

(assert (=> b!966502 m!895343))

(declare-fun m!895345 () Bool)

(assert (=> b!966502 m!895345))

(declare-fun m!895347 () Bool)

(assert (=> start!82888 m!895347))

(declare-fun m!895349 () Bool)

(assert (=> start!82888 m!895349))

(declare-fun m!895351 () Bool)

(assert (=> start!82888 m!895351))

(assert (=> b!966508 m!895343))

(assert (=> b!966508 m!895343))

(declare-fun m!895353 () Bool)

(assert (=> b!966508 m!895353))

(check-sat (not b_next!18987) (not b!966501) (not b!966507) (not mapNonEmpty!34687) (not b!966508) (not start!82888) (not b!966502) tp_is_empty!21795 b_and!30493)
(check-sat b_and!30493 (not b_next!18987))
