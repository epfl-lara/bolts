; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82930 () Bool)

(assert start!82930)

(declare-fun b_free!19029 () Bool)

(declare-fun b_next!19029 () Bool)

(assert (=> start!82930 (= b_free!19029 (not b_next!19029))))

(declare-fun tp!66216 () Bool)

(declare-fun b_and!30535 () Bool)

(assert (=> start!82930 (= tp!66216 b_and!30535)))

(declare-fun b!967167 () Bool)

(declare-fun res!647538 () Bool)

(declare-fun e!545179 () Bool)

(assert (=> b!967167 (=> (not res!647538) (not e!545179))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!34099 0))(
  ( (V!34100 (val!10969 Int)) )
))
(declare-datatypes ((ValueCell!10437 0))(
  ( (ValueCellFull!10437 (v!13527 V!34099)) (EmptyCell!10437) )
))
(declare-datatypes ((array!59729 0))(
  ( (array!59730 (arr!28729 (Array (_ BitVec 32) ValueCell!10437)) (size!29209 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59729)

(declare-datatypes ((array!59731 0))(
  ( (array!59732 (arr!28730 (Array (_ BitVec 32) (_ BitVec 64))) (size!29210 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59731)

(declare-fun mask!2110 () (_ BitVec 32))

(assert (=> b!967167 (= res!647538 (and (= (size!29209 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29210 _keys!1686) (size!29209 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!967168 () Bool)

(declare-fun e!545177 () Bool)

(declare-fun tp_is_empty!21837 () Bool)

(assert (=> b!967168 (= e!545177 tp_is_empty!21837)))

(declare-fun b!967170 () Bool)

(declare-fun res!647537 () Bool)

(assert (=> b!967170 (=> (not res!647537) (not e!545179))))

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!967170 (= res!647537 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29210 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29210 _keys!1686))))))

(declare-fun b!967171 () Bool)

(declare-fun res!647542 () Bool)

(assert (=> b!967171 (=> (not res!647542) (not e!545179))))

(declare-fun defaultEntry!1403 () Int)

(declare-fun minValue!1342 () V!34099)

(declare-fun zeroValue!1342 () V!34099)

(declare-datatypes ((tuple2!14196 0))(
  ( (tuple2!14197 (_1!7108 (_ BitVec 64)) (_2!7108 V!34099)) )
))
(declare-datatypes ((List!20070 0))(
  ( (Nil!20067) (Cons!20066 (h!21228 tuple2!14196) (t!28441 List!20070)) )
))
(declare-datatypes ((ListLongMap!12907 0))(
  ( (ListLongMap!12908 (toList!6469 List!20070)) )
))
(declare-fun contains!5520 (ListLongMap!12907 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3654 (array!59731 array!59729 (_ BitVec 32) (_ BitVec 32) V!34099 V!34099 (_ BitVec 32) Int) ListLongMap!12907)

(assert (=> b!967171 (= res!647542 (contains!5520 (getCurrentListMap!3654 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28730 _keys!1686) i!803)))))

(declare-fun mapNonEmpty!34750 () Bool)

(declare-fun mapRes!34750 () Bool)

(declare-fun tp!66217 () Bool)

(declare-fun e!545176 () Bool)

(assert (=> mapNonEmpty!34750 (= mapRes!34750 (and tp!66217 e!545176))))

(declare-fun mapKey!34750 () (_ BitVec 32))

(declare-fun mapValue!34750 () ValueCell!10437)

(declare-fun mapRest!34750 () (Array (_ BitVec 32) ValueCell!10437))

(assert (=> mapNonEmpty!34750 (= (arr!28729 _values!1400) (store mapRest!34750 mapKey!34750 mapValue!34750))))

(declare-fun b!967172 () Bool)

(assert (=> b!967172 (= e!545176 tp_is_empty!21837)))

(declare-fun b!967173 () Bool)

(assert (=> b!967173 (= e!545179 (not true))))

(assert (=> b!967173 (contains!5520 (getCurrentListMap!3654 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28730 _keys!1686) i!803))))

(declare-datatypes ((Unit!32291 0))(
  ( (Unit!32292) )
))
(declare-fun lt!431355 () Unit!32291)

(declare-fun lemmaInListMapFromThenInFromMinusOne!52 (array!59731 array!59729 (_ BitVec 32) (_ BitVec 32) V!34099 V!34099 (_ BitVec 32) (_ BitVec 32) Int) Unit!32291)

(assert (=> b!967173 (= lt!431355 (lemmaInListMapFromThenInFromMinusOne!52 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!967169 () Bool)

(declare-fun res!647543 () Bool)

(assert (=> b!967169 (=> (not res!647543) (not e!545179))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!967169 (= res!647543 (validKeyInArray!0 (select (arr!28730 _keys!1686) i!803)))))

(declare-fun res!647541 () Bool)

(assert (=> start!82930 (=> (not res!647541) (not e!545179))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82930 (= res!647541 (validMask!0 mask!2110))))

(assert (=> start!82930 e!545179))

(assert (=> start!82930 true))

(declare-fun e!545178 () Bool)

(declare-fun array_inv!22139 (array!59729) Bool)

(assert (=> start!82930 (and (array_inv!22139 _values!1400) e!545178)))

(declare-fun array_inv!22140 (array!59731) Bool)

(assert (=> start!82930 (array_inv!22140 _keys!1686)))

(assert (=> start!82930 tp!66216))

(assert (=> start!82930 tp_is_empty!21837))

(declare-fun b!967174 () Bool)

(declare-fun res!647536 () Bool)

(assert (=> b!967174 (=> (not res!647536) (not e!545179))))

(assert (=> b!967174 (= res!647536 (bvsgt from!2084 newFrom!159))))

(declare-fun b!967175 () Bool)

(assert (=> b!967175 (= e!545178 (and e!545177 mapRes!34750))))

(declare-fun condMapEmpty!34750 () Bool)

(declare-fun mapDefault!34750 () ValueCell!10437)

(assert (=> b!967175 (= condMapEmpty!34750 (= (arr!28729 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10437)) mapDefault!34750)))))

(declare-fun b!967176 () Bool)

(declare-fun res!647540 () Bool)

(assert (=> b!967176 (=> (not res!647540) (not e!545179))))

(declare-datatypes ((List!20071 0))(
  ( (Nil!20068) (Cons!20067 (h!21229 (_ BitVec 64)) (t!28442 List!20071)) )
))
(declare-fun arrayNoDuplicates!0 (array!59731 (_ BitVec 32) List!20071) Bool)

(assert (=> b!967176 (= res!647540 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20068))))

(declare-fun b!967177 () Bool)

(declare-fun res!647539 () Bool)

(assert (=> b!967177 (=> (not res!647539) (not e!545179))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59731 (_ BitVec 32)) Bool)

(assert (=> b!967177 (= res!647539 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun mapIsEmpty!34750 () Bool)

(assert (=> mapIsEmpty!34750 mapRes!34750))

(assert (= (and start!82930 res!647541) b!967167))

(assert (= (and b!967167 res!647538) b!967177))

(assert (= (and b!967177 res!647539) b!967176))

(assert (= (and b!967176 res!647540) b!967170))

(assert (= (and b!967170 res!647537) b!967169))

(assert (= (and b!967169 res!647543) b!967171))

(assert (= (and b!967171 res!647542) b!967174))

(assert (= (and b!967174 res!647536) b!967173))

(assert (= (and b!967175 condMapEmpty!34750) mapIsEmpty!34750))

(assert (= (and b!967175 (not condMapEmpty!34750)) mapNonEmpty!34750))

(get-info :version)

(assert (= (and mapNonEmpty!34750 ((_ is ValueCellFull!10437) mapValue!34750)) b!967172))

(assert (= (and b!967175 ((_ is ValueCellFull!10437) mapDefault!34750)) b!967168))

(assert (= start!82930 b!967175))

(declare-fun m!895851 () Bool)

(assert (=> mapNonEmpty!34750 m!895851))

(declare-fun m!895853 () Bool)

(assert (=> start!82930 m!895853))

(declare-fun m!895855 () Bool)

(assert (=> start!82930 m!895855))

(declare-fun m!895857 () Bool)

(assert (=> start!82930 m!895857))

(declare-fun m!895859 () Bool)

(assert (=> b!967176 m!895859))

(declare-fun m!895861 () Bool)

(assert (=> b!967173 m!895861))

(declare-fun m!895863 () Bool)

(assert (=> b!967173 m!895863))

(assert (=> b!967173 m!895861))

(assert (=> b!967173 m!895863))

(declare-fun m!895865 () Bool)

(assert (=> b!967173 m!895865))

(declare-fun m!895867 () Bool)

(assert (=> b!967173 m!895867))

(declare-fun m!895869 () Bool)

(assert (=> b!967171 m!895869))

(assert (=> b!967171 m!895863))

(assert (=> b!967171 m!895869))

(assert (=> b!967171 m!895863))

(declare-fun m!895871 () Bool)

(assert (=> b!967171 m!895871))

(declare-fun m!895873 () Bool)

(assert (=> b!967177 m!895873))

(assert (=> b!967169 m!895863))

(assert (=> b!967169 m!895863))

(declare-fun m!895875 () Bool)

(assert (=> b!967169 m!895875))

(check-sat (not b!967173) (not b!967171) (not b!967177) (not b_next!19029) (not b!967176) tp_is_empty!21837 b_and!30535 (not mapNonEmpty!34750) (not start!82930) (not b!967169))
(check-sat b_and!30535 (not b_next!19029))
