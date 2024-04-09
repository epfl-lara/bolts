; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82600 () Bool)

(assert start!82600)

(declare-fun b_free!18705 () Bool)

(declare-fun b_next!18705 () Bool)

(assert (=> start!82600 (= b_free!18705 (not b_next!18705))))

(declare-fun tp!65236 () Bool)

(declare-fun b_and!30211 () Bool)

(assert (=> start!82600 (= tp!65236 b_and!30211)))

(declare-fun mapIsEmpty!34255 () Bool)

(declare-fun mapRes!34255 () Bool)

(assert (=> mapIsEmpty!34255 mapRes!34255))

(declare-fun mapNonEmpty!34255 () Bool)

(declare-fun tp!65235 () Bool)

(declare-fun e!542622 () Bool)

(assert (=> mapNonEmpty!34255 (= mapRes!34255 (and tp!65235 e!542622))))

(declare-datatypes ((V!33659 0))(
  ( (V!33660 (val!10804 Int)) )
))
(declare-datatypes ((ValueCell!10272 0))(
  ( (ValueCellFull!10272 (v!13362 V!33659)) (EmptyCell!10272) )
))
(declare-fun mapRest!34255 () (Array (_ BitVec 32) ValueCell!10272))

(declare-datatypes ((array!59099 0))(
  ( (array!59100 (arr!28414 (Array (_ BitVec 32) ValueCell!10272)) (size!28894 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59099)

(declare-fun mapKey!34255 () (_ BitVec 32))

(declare-fun mapValue!34255 () ValueCell!10272)

(assert (=> mapNonEmpty!34255 (= (arr!28414 _values!1400) (store mapRest!34255 mapKey!34255 mapValue!34255))))

(declare-fun b!962153 () Bool)

(declare-fun e!542620 () Bool)

(assert (=> b!962153 (= e!542620 false)))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((array!59101 0))(
  ( (array!59102 (arr!28415 (Array (_ BitVec 32) (_ BitVec 64))) (size!28895 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59101)

(declare-fun lt!430806 () Bool)

(declare-fun minValue!1342 () V!33659)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!33659)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!13962 0))(
  ( (tuple2!13963 (_1!6991 (_ BitVec 64)) (_2!6991 V!33659)) )
))
(declare-datatypes ((List!19844 0))(
  ( (Nil!19841) (Cons!19840 (h!21002 tuple2!13962) (t!28215 List!19844)) )
))
(declare-datatypes ((ListLongMap!12673 0))(
  ( (ListLongMap!12674 (toList!6352 List!19844)) )
))
(declare-fun contains!5406 (ListLongMap!12673 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3537 (array!59101 array!59099 (_ BitVec 32) (_ BitVec 32) V!33659 V!33659 (_ BitVec 32) Int) ListLongMap!12673)

(assert (=> b!962153 (= lt!430806 (contains!5406 (getCurrentListMap!3537 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28415 _keys!1686) i!803)))))

(declare-fun b!962154 () Bool)

(declare-fun res!644010 () Bool)

(assert (=> b!962154 (=> (not res!644010) (not e!542620))))

(declare-datatypes ((List!19845 0))(
  ( (Nil!19842) (Cons!19841 (h!21003 (_ BitVec 64)) (t!28216 List!19845)) )
))
(declare-fun arrayNoDuplicates!0 (array!59101 (_ BitVec 32) List!19845) Bool)

(assert (=> b!962154 (= res!644010 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19842))))

(declare-fun b!962155 () Bool)

(declare-fun res!644008 () Bool)

(assert (=> b!962155 (=> (not res!644008) (not e!542620))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!962155 (= res!644008 (validKeyInArray!0 (select (arr!28415 _keys!1686) i!803)))))

(declare-fun b!962156 () Bool)

(declare-fun res!644012 () Bool)

(assert (=> b!962156 (=> (not res!644012) (not e!542620))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59101 (_ BitVec 32)) Bool)

(assert (=> b!962156 (= res!644012 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!962157 () Bool)

(declare-fun res!644007 () Bool)

(assert (=> b!962157 (=> (not res!644007) (not e!542620))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!962157 (= res!644007 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28895 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28895 _keys!1686))))))

(declare-fun b!962159 () Bool)

(declare-fun e!542619 () Bool)

(declare-fun tp_is_empty!21507 () Bool)

(assert (=> b!962159 (= e!542619 tp_is_empty!21507)))

(declare-fun b!962160 () Bool)

(assert (=> b!962160 (= e!542622 tp_is_empty!21507)))

(declare-fun b!962161 () Bool)

(declare-fun res!644009 () Bool)

(assert (=> b!962161 (=> (not res!644009) (not e!542620))))

(assert (=> b!962161 (= res!644009 (and (= (size!28894 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28895 _keys!1686) (size!28894 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!962158 () Bool)

(declare-fun e!542623 () Bool)

(assert (=> b!962158 (= e!542623 (and e!542619 mapRes!34255))))

(declare-fun condMapEmpty!34255 () Bool)

(declare-fun mapDefault!34255 () ValueCell!10272)

(assert (=> b!962158 (= condMapEmpty!34255 (= (arr!28414 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10272)) mapDefault!34255)))))

(declare-fun res!644011 () Bool)

(assert (=> start!82600 (=> (not res!644011) (not e!542620))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82600 (= res!644011 (validMask!0 mask!2110))))

(assert (=> start!82600 e!542620))

(assert (=> start!82600 true))

(declare-fun array_inv!21941 (array!59099) Bool)

(assert (=> start!82600 (and (array_inv!21941 _values!1400) e!542623)))

(declare-fun array_inv!21942 (array!59101) Bool)

(assert (=> start!82600 (array_inv!21942 _keys!1686)))

(assert (=> start!82600 tp!65236))

(assert (=> start!82600 tp_is_empty!21507))

(assert (= (and start!82600 res!644011) b!962161))

(assert (= (and b!962161 res!644009) b!962156))

(assert (= (and b!962156 res!644012) b!962154))

(assert (= (and b!962154 res!644010) b!962157))

(assert (= (and b!962157 res!644007) b!962155))

(assert (= (and b!962155 res!644008) b!962153))

(assert (= (and b!962158 condMapEmpty!34255) mapIsEmpty!34255))

(assert (= (and b!962158 (not condMapEmpty!34255)) mapNonEmpty!34255))

(get-info :version)

(assert (= (and mapNonEmpty!34255 ((_ is ValueCellFull!10272) mapValue!34255)) b!962160))

(assert (= (and b!962158 ((_ is ValueCellFull!10272) mapDefault!34255)) b!962159))

(assert (= start!82600 b!962158))

(declare-fun m!891945 () Bool)

(assert (=> b!962155 m!891945))

(assert (=> b!962155 m!891945))

(declare-fun m!891947 () Bool)

(assert (=> b!962155 m!891947))

(declare-fun m!891949 () Bool)

(assert (=> start!82600 m!891949))

(declare-fun m!891951 () Bool)

(assert (=> start!82600 m!891951))

(declare-fun m!891953 () Bool)

(assert (=> start!82600 m!891953))

(declare-fun m!891955 () Bool)

(assert (=> mapNonEmpty!34255 m!891955))

(declare-fun m!891957 () Bool)

(assert (=> b!962156 m!891957))

(declare-fun m!891959 () Bool)

(assert (=> b!962153 m!891959))

(assert (=> b!962153 m!891945))

(assert (=> b!962153 m!891959))

(assert (=> b!962153 m!891945))

(declare-fun m!891961 () Bool)

(assert (=> b!962153 m!891961))

(declare-fun m!891963 () Bool)

(assert (=> b!962154 m!891963))

(check-sat (not b_next!18705) (not b!962155) tp_is_empty!21507 (not mapNonEmpty!34255) (not b!962153) b_and!30211 (not b!962156) (not start!82600) (not b!962154))
(check-sat b_and!30211 (not b_next!18705))
