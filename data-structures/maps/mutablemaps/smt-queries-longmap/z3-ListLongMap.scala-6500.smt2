; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82870 () Bool)

(assert start!82870)

(declare-fun b_free!18969 () Bool)

(declare-fun b_next!18969 () Bool)

(assert (=> start!82870 (= b_free!18969 (not b_next!18969))))

(declare-fun tp!66037 () Bool)

(declare-fun b_and!30475 () Bool)

(assert (=> start!82870 (= tp!66037 b_and!30475)))

(declare-fun b!966248 () Bool)

(declare-fun res!646889 () Bool)

(declare-fun e!544726 () Bool)

(assert (=> b!966248 (=> (not res!646889) (not e!544726))))

(declare-datatypes ((array!59617 0))(
  ( (array!59618 (arr!28673 (Array (_ BitVec 32) (_ BitVec 64))) (size!29153 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59617)

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!966248 (= res!646889 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29153 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29153 _keys!1686))))))

(declare-fun b!966249 () Bool)

(declare-fun res!646887 () Bool)

(assert (=> b!966249 (=> (not res!646887) (not e!544726))))

(declare-datatypes ((List!20027 0))(
  ( (Nil!20024) (Cons!20023 (h!21185 (_ BitVec 64)) (t!28398 List!20027)) )
))
(declare-fun arrayNoDuplicates!0 (array!59617 (_ BitVec 32) List!20027) Bool)

(assert (=> b!966249 (= res!646887 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20024))))

(declare-fun res!646890 () Bool)

(assert (=> start!82870 (=> (not res!646890) (not e!544726))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82870 (= res!646890 (validMask!0 mask!2110))))

(assert (=> start!82870 e!544726))

(assert (=> start!82870 true))

(declare-datatypes ((V!34019 0))(
  ( (V!34020 (val!10939 Int)) )
))
(declare-datatypes ((ValueCell!10407 0))(
  ( (ValueCellFull!10407 (v!13497 V!34019)) (EmptyCell!10407) )
))
(declare-datatypes ((array!59619 0))(
  ( (array!59620 (arr!28674 (Array (_ BitVec 32) ValueCell!10407)) (size!29154 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59619)

(declare-fun e!544725 () Bool)

(declare-fun array_inv!22109 (array!59619) Bool)

(assert (=> start!82870 (and (array_inv!22109 _values!1400) e!544725)))

(declare-fun array_inv!22110 (array!59617) Bool)

(assert (=> start!82870 (array_inv!22110 _keys!1686)))

(assert (=> start!82870 tp!66037))

(declare-fun tp_is_empty!21777 () Bool)

(assert (=> start!82870 tp_is_empty!21777))

(declare-fun b!966250 () Bool)

(declare-fun e!544727 () Bool)

(assert (=> b!966250 (= e!544727 tp_is_empty!21777)))

(declare-fun b!966251 () Bool)

(assert (=> b!966251 (= e!544726 false)))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun lt!431274 () Bool)

(declare-fun minValue!1342 () V!34019)

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!34019)

(declare-datatypes ((tuple2!14152 0))(
  ( (tuple2!14153 (_1!7086 (_ BitVec 64)) (_2!7086 V!34019)) )
))
(declare-datatypes ((List!20028 0))(
  ( (Nil!20025) (Cons!20024 (h!21186 tuple2!14152) (t!28399 List!20028)) )
))
(declare-datatypes ((ListLongMap!12863 0))(
  ( (ListLongMap!12864 (toList!6447 List!20028)) )
))
(declare-fun contains!5498 (ListLongMap!12863 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3632 (array!59617 array!59619 (_ BitVec 32) (_ BitVec 32) V!34019 V!34019 (_ BitVec 32) Int) ListLongMap!12863)

(assert (=> b!966251 (= lt!431274 (contains!5498 (getCurrentListMap!3632 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28673 _keys!1686) i!803)))))

(declare-fun b!966252 () Bool)

(declare-fun mapRes!34660 () Bool)

(assert (=> b!966252 (= e!544725 (and e!544727 mapRes!34660))))

(declare-fun condMapEmpty!34660 () Bool)

(declare-fun mapDefault!34660 () ValueCell!10407)

(assert (=> b!966252 (= condMapEmpty!34660 (= (arr!28674 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10407)) mapDefault!34660)))))

(declare-fun b!966253 () Bool)

(declare-fun res!646888 () Bool)

(assert (=> b!966253 (=> (not res!646888) (not e!544726))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59617 (_ BitVec 32)) Bool)

(assert (=> b!966253 (= res!646888 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun mapNonEmpty!34660 () Bool)

(declare-fun tp!66036 () Bool)

(declare-fun e!544728 () Bool)

(assert (=> mapNonEmpty!34660 (= mapRes!34660 (and tp!66036 e!544728))))

(declare-fun mapKey!34660 () (_ BitVec 32))

(declare-fun mapValue!34660 () ValueCell!10407)

(declare-fun mapRest!34660 () (Array (_ BitVec 32) ValueCell!10407))

(assert (=> mapNonEmpty!34660 (= (arr!28674 _values!1400) (store mapRest!34660 mapKey!34660 mapValue!34660))))

(declare-fun b!966254 () Bool)

(declare-fun res!646891 () Bool)

(assert (=> b!966254 (=> (not res!646891) (not e!544726))))

(assert (=> b!966254 (= res!646891 (and (= (size!29154 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29153 _keys!1686) (size!29154 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!966255 () Bool)

(assert (=> b!966255 (= e!544728 tp_is_empty!21777)))

(declare-fun b!966256 () Bool)

(declare-fun res!646892 () Bool)

(assert (=> b!966256 (=> (not res!646892) (not e!544726))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!966256 (= res!646892 (validKeyInArray!0 (select (arr!28673 _keys!1686) i!803)))))

(declare-fun mapIsEmpty!34660 () Bool)

(assert (=> mapIsEmpty!34660 mapRes!34660))

(assert (= (and start!82870 res!646890) b!966254))

(assert (= (and b!966254 res!646891) b!966253))

(assert (= (and b!966253 res!646888) b!966249))

(assert (= (and b!966249 res!646887) b!966248))

(assert (= (and b!966248 res!646889) b!966256))

(assert (= (and b!966256 res!646892) b!966251))

(assert (= (and b!966252 condMapEmpty!34660) mapIsEmpty!34660))

(assert (= (and b!966252 (not condMapEmpty!34660)) mapNonEmpty!34660))

(get-info :version)

(assert (= (and mapNonEmpty!34660 ((_ is ValueCellFull!10407) mapValue!34660)) b!966255))

(assert (= (and b!966252 ((_ is ValueCellFull!10407) mapDefault!34660)) b!966250))

(assert (= start!82870 b!966252))

(declare-fun m!895155 () Bool)

(assert (=> b!966256 m!895155))

(assert (=> b!966256 m!895155))

(declare-fun m!895157 () Bool)

(assert (=> b!966256 m!895157))

(declare-fun m!895159 () Bool)

(assert (=> b!966253 m!895159))

(declare-fun m!895161 () Bool)

(assert (=> start!82870 m!895161))

(declare-fun m!895163 () Bool)

(assert (=> start!82870 m!895163))

(declare-fun m!895165 () Bool)

(assert (=> start!82870 m!895165))

(declare-fun m!895167 () Bool)

(assert (=> b!966249 m!895167))

(declare-fun m!895169 () Bool)

(assert (=> mapNonEmpty!34660 m!895169))

(declare-fun m!895171 () Bool)

(assert (=> b!966251 m!895171))

(assert (=> b!966251 m!895155))

(assert (=> b!966251 m!895171))

(assert (=> b!966251 m!895155))

(declare-fun m!895173 () Bool)

(assert (=> b!966251 m!895173))

(check-sat (not b!966256) (not mapNonEmpty!34660) (not b!966249) b_and!30475 (not b!966251) (not b_next!18969) tp_is_empty!21777 (not start!82870) (not b!966253))
(check-sat b_and!30475 (not b_next!18969))
