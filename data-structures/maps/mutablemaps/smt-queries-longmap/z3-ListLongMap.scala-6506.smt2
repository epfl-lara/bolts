; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82906 () Bool)

(assert start!82906)

(declare-fun b_free!19005 () Bool)

(declare-fun b_next!19005 () Bool)

(assert (=> start!82906 (= b_free!19005 (not b_next!19005))))

(declare-fun tp!66145 () Bool)

(declare-fun b_and!30511 () Bool)

(assert (=> start!82906 (= tp!66145 b_and!30511)))

(declare-fun b!966771 () Bool)

(declare-fun e!544996 () Bool)

(declare-fun e!544997 () Bool)

(declare-fun mapRes!34714 () Bool)

(assert (=> b!966771 (= e!544996 (and e!544997 mapRes!34714))))

(declare-fun condMapEmpty!34714 () Bool)

(declare-datatypes ((V!34067 0))(
  ( (V!34068 (val!10957 Int)) )
))
(declare-datatypes ((ValueCell!10425 0))(
  ( (ValueCellFull!10425 (v!13515 V!34067)) (EmptyCell!10425) )
))
(declare-datatypes ((array!59689 0))(
  ( (array!59690 (arr!28709 (Array (_ BitVec 32) ValueCell!10425)) (size!29189 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59689)

(declare-fun mapDefault!34714 () ValueCell!10425)

(assert (=> b!966771 (= condMapEmpty!34714 (= (arr!28709 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10425)) mapDefault!34714)))))

(declare-fun res!647250 () Bool)

(declare-fun e!544998 () Bool)

(assert (=> start!82906 (=> (not res!647250) (not e!544998))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82906 (= res!647250 (validMask!0 mask!2110))))

(assert (=> start!82906 e!544998))

(assert (=> start!82906 true))

(declare-fun array_inv!22129 (array!59689) Bool)

(assert (=> start!82906 (and (array_inv!22129 _values!1400) e!544996)))

(declare-datatypes ((array!59691 0))(
  ( (array!59692 (arr!28710 (Array (_ BitVec 32) (_ BitVec 64))) (size!29190 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59691)

(declare-fun array_inv!22130 (array!59691) Bool)

(assert (=> start!82906 (array_inv!22130 _keys!1686)))

(assert (=> start!82906 tp!66145))

(declare-fun tp_is_empty!21813 () Bool)

(assert (=> start!82906 tp_is_empty!21813))

(declare-fun b!966772 () Bool)

(declare-fun e!544999 () Bool)

(assert (=> b!966772 (= e!544999 tp_is_empty!21813)))

(declare-fun b!966773 () Bool)

(assert (=> b!966773 (= e!544998 (not true))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun minValue!1342 () V!34067)

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!34067)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14182 0))(
  ( (tuple2!14183 (_1!7101 (_ BitVec 64)) (_2!7101 V!34067)) )
))
(declare-datatypes ((List!20056 0))(
  ( (Nil!20053) (Cons!20052 (h!21214 tuple2!14182) (t!28427 List!20056)) )
))
(declare-datatypes ((ListLongMap!12893 0))(
  ( (ListLongMap!12894 (toList!6462 List!20056)) )
))
(declare-fun contains!5513 (ListLongMap!12893 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3647 (array!59691 array!59689 (_ BitVec 32) (_ BitVec 32) V!34067 V!34067 (_ BitVec 32) Int) ListLongMap!12893)

(assert (=> b!966773 (contains!5513 (getCurrentListMap!3647 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28710 _keys!1686) i!803))))

(declare-datatypes ((Unit!32277 0))(
  ( (Unit!32278) )
))
(declare-fun lt!431319 () Unit!32277)

(declare-fun lemmaInListMapFromThenInFromMinusOne!45 (array!59691 array!59689 (_ BitVec 32) (_ BitVec 32) V!34067 V!34067 (_ BitVec 32) (_ BitVec 32) Int) Unit!32277)

(assert (=> b!966773 (= lt!431319 (lemmaInListMapFromThenInFromMinusOne!45 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!966774 () Bool)

(declare-fun res!647252 () Bool)

(assert (=> b!966774 (=> (not res!647252) (not e!544998))))

(declare-datatypes ((List!20057 0))(
  ( (Nil!20054) (Cons!20053 (h!21215 (_ BitVec 64)) (t!28428 List!20057)) )
))
(declare-fun arrayNoDuplicates!0 (array!59691 (_ BitVec 32) List!20057) Bool)

(assert (=> b!966774 (= res!647252 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20054))))

(declare-fun b!966775 () Bool)

(assert (=> b!966775 (= e!544997 tp_is_empty!21813)))

(declare-fun b!966776 () Bool)

(declare-fun res!647248 () Bool)

(assert (=> b!966776 (=> (not res!647248) (not e!544998))))

(assert (=> b!966776 (= res!647248 (contains!5513 (getCurrentListMap!3647 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28710 _keys!1686) i!803)))))

(declare-fun b!966777 () Bool)

(declare-fun res!647253 () Bool)

(assert (=> b!966777 (=> (not res!647253) (not e!544998))))

(assert (=> b!966777 (= res!647253 (and (= (size!29189 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29190 _keys!1686) (size!29189 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!966778 () Bool)

(declare-fun res!647249 () Bool)

(assert (=> b!966778 (=> (not res!647249) (not e!544998))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!966778 (= res!647249 (bvsgt from!2084 newFrom!159))))

(declare-fun b!966779 () Bool)

(declare-fun res!647251 () Bool)

(assert (=> b!966779 (=> (not res!647251) (not e!544998))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!966779 (= res!647251 (validKeyInArray!0 (select (arr!28710 _keys!1686) i!803)))))

(declare-fun mapNonEmpty!34714 () Bool)

(declare-fun tp!66144 () Bool)

(assert (=> mapNonEmpty!34714 (= mapRes!34714 (and tp!66144 e!544999))))

(declare-fun mapKey!34714 () (_ BitVec 32))

(declare-fun mapRest!34714 () (Array (_ BitVec 32) ValueCell!10425))

(declare-fun mapValue!34714 () ValueCell!10425)

(assert (=> mapNonEmpty!34714 (= (arr!28709 _values!1400) (store mapRest!34714 mapKey!34714 mapValue!34714))))

(declare-fun b!966780 () Bool)

(declare-fun res!647255 () Bool)

(assert (=> b!966780 (=> (not res!647255) (not e!544998))))

(assert (=> b!966780 (= res!647255 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29190 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29190 _keys!1686))))))

(declare-fun mapIsEmpty!34714 () Bool)

(assert (=> mapIsEmpty!34714 mapRes!34714))

(declare-fun b!966781 () Bool)

(declare-fun res!647254 () Bool)

(assert (=> b!966781 (=> (not res!647254) (not e!544998))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59691 (_ BitVec 32)) Bool)

(assert (=> b!966781 (= res!647254 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(assert (= (and start!82906 res!647250) b!966777))

(assert (= (and b!966777 res!647253) b!966781))

(assert (= (and b!966781 res!647254) b!966774))

(assert (= (and b!966774 res!647252) b!966780))

(assert (= (and b!966780 res!647255) b!966779))

(assert (= (and b!966779 res!647251) b!966776))

(assert (= (and b!966776 res!647248) b!966778))

(assert (= (and b!966778 res!647249) b!966773))

(assert (= (and b!966771 condMapEmpty!34714) mapIsEmpty!34714))

(assert (= (and b!966771 (not condMapEmpty!34714)) mapNonEmpty!34714))

(get-info :version)

(assert (= (and mapNonEmpty!34714 ((_ is ValueCellFull!10425) mapValue!34714)) b!966772))

(assert (= (and b!966771 ((_ is ValueCellFull!10425) mapDefault!34714)) b!966775))

(assert (= start!82906 b!966771))

(declare-fun m!895539 () Bool)

(assert (=> b!966779 m!895539))

(assert (=> b!966779 m!895539))

(declare-fun m!895541 () Bool)

(assert (=> b!966779 m!895541))

(declare-fun m!895543 () Bool)

(assert (=> b!966776 m!895543))

(assert (=> b!966776 m!895539))

(assert (=> b!966776 m!895543))

(assert (=> b!966776 m!895539))

(declare-fun m!895545 () Bool)

(assert (=> b!966776 m!895545))

(declare-fun m!895547 () Bool)

(assert (=> b!966774 m!895547))

(declare-fun m!895549 () Bool)

(assert (=> mapNonEmpty!34714 m!895549))

(declare-fun m!895551 () Bool)

(assert (=> start!82906 m!895551))

(declare-fun m!895553 () Bool)

(assert (=> start!82906 m!895553))

(declare-fun m!895555 () Bool)

(assert (=> start!82906 m!895555))

(declare-fun m!895557 () Bool)

(assert (=> b!966773 m!895557))

(assert (=> b!966773 m!895539))

(assert (=> b!966773 m!895557))

(assert (=> b!966773 m!895539))

(declare-fun m!895559 () Bool)

(assert (=> b!966773 m!895559))

(declare-fun m!895561 () Bool)

(assert (=> b!966773 m!895561))

(declare-fun m!895563 () Bool)

(assert (=> b!966781 m!895563))

(check-sat (not b_next!19005) (not start!82906) tp_is_empty!21813 (not b!966781) (not b!966779) (not b!966776) b_and!30511 (not b!966774) (not mapNonEmpty!34714) (not b!966773))
(check-sat b_and!30511 (not b_next!19005))
