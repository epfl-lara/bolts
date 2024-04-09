; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83824 () Bool)

(assert start!83824)

(declare-fun b_free!19605 () Bool)

(declare-fun b_next!19605 () Bool)

(assert (=> start!83824 (= b_free!19605 (not b_next!19605))))

(declare-fun tp!68257 () Bool)

(declare-fun b_and!31317 () Bool)

(assert (=> start!83824 (= tp!68257 b_and!31317)))

(declare-fun res!654946 () Bool)

(declare-fun e!551668 () Bool)

(assert (=> start!83824 (=> (not res!654946) (not e!551668))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83824 (= res!654946 (validMask!0 mask!1948))))

(assert (=> start!83824 e!551668))

(assert (=> start!83824 true))

(declare-fun tp_is_empty!22599 () Bool)

(assert (=> start!83824 tp_is_empty!22599))

(declare-datatypes ((V!35115 0))(
  ( (V!35116 (val!11350 Int)) )
))
(declare-datatypes ((ValueCell!10818 0))(
  ( (ValueCellFull!10818 (v!13912 V!35115)) (EmptyCell!10818) )
))
(declare-datatypes ((array!61213 0))(
  ( (array!61214 (arr!29460 (Array (_ BitVec 32) ValueCell!10818)) (size!29940 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61213)

(declare-fun e!551666 () Bool)

(declare-fun array_inv!22673 (array!61213) Bool)

(assert (=> start!83824 (and (array_inv!22673 _values!1278) e!551666)))

(assert (=> start!83824 tp!68257))

(declare-datatypes ((array!61215 0))(
  ( (array!61216 (arr!29461 (Array (_ BitVec 32) (_ BitVec 64))) (size!29941 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61215)

(declare-fun array_inv!22674 (array!61215) Bool)

(assert (=> start!83824 (array_inv!22674 _keys!1544)))

(declare-fun b!978503 () Bool)

(declare-fun e!551667 () Bool)

(assert (=> b!978503 (= e!551667 tp_is_empty!22599)))

(declare-fun b!978504 () Bool)

(declare-fun res!654949 () Bool)

(assert (=> b!978504 (=> (not res!654949) (not e!551668))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!978504 (= res!654949 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!978505 () Bool)

(declare-fun res!654951 () Bool)

(assert (=> b!978505 (=> (not res!654951) (not e!551668))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61215 (_ BitVec 32)) Bool)

(assert (=> b!978505 (= res!654951 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapNonEmpty!35927 () Bool)

(declare-fun mapRes!35927 () Bool)

(declare-fun tp!68258 () Bool)

(assert (=> mapNonEmpty!35927 (= mapRes!35927 (and tp!68258 e!551667))))

(declare-fun mapKey!35927 () (_ BitVec 32))

(declare-fun mapRest!35927 () (Array (_ BitVec 32) ValueCell!10818))

(declare-fun mapValue!35927 () ValueCell!10818)

(assert (=> mapNonEmpty!35927 (= (arr!29460 _values!1278) (store mapRest!35927 mapKey!35927 mapValue!35927))))

(declare-fun b!978506 () Bool)

(declare-fun res!654948 () Bool)

(assert (=> b!978506 (=> (not res!654948) (not e!551668))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!978506 (= res!654948 (validKeyInArray!0 (select (arr!29461 _keys!1544) from!1932)))))

(declare-fun b!978507 () Bool)

(declare-fun e!551665 () Bool)

(assert (=> b!978507 (= e!551665 tp_is_empty!22599)))

(declare-fun b!978508 () Bool)

(declare-fun res!654945 () Bool)

(assert (=> b!978508 (=> (not res!654945) (not e!551668))))

(declare-datatypes ((List!20550 0))(
  ( (Nil!20547) (Cons!20546 (h!21708 (_ BitVec 64)) (t!29119 List!20550)) )
))
(declare-fun arrayNoDuplicates!0 (array!61215 (_ BitVec 32) List!20550) Bool)

(assert (=> b!978508 (= res!654945 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20547))))

(declare-fun b!978509 () Bool)

(declare-fun res!654950 () Bool)

(assert (=> b!978509 (=> (not res!654950) (not e!551668))))

(assert (=> b!978509 (= res!654950 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!29941 _keys!1544))))))

(declare-fun b!978510 () Bool)

(declare-fun res!654947 () Bool)

(assert (=> b!978510 (=> (not res!654947) (not e!551668))))

(assert (=> b!978510 (= res!654947 (and (= (size!29940 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29941 _keys!1544) (size!29940 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!978511 () Bool)

(assert (=> b!978511 (= e!551666 (and e!551665 mapRes!35927))))

(declare-fun condMapEmpty!35927 () Bool)

(declare-fun mapDefault!35927 () ValueCell!10818)

(assert (=> b!978511 (= condMapEmpty!35927 (= (arr!29460 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10818)) mapDefault!35927)))))

(declare-fun mapIsEmpty!35927 () Bool)

(assert (=> mapIsEmpty!35927 mapRes!35927))

(declare-fun b!978512 () Bool)

(assert (=> b!978512 (= e!551668 (not true))))

(declare-datatypes ((tuple2!14650 0))(
  ( (tuple2!14651 (_1!7335 (_ BitVec 64)) (_2!7335 V!35115)) )
))
(declare-datatypes ((List!20551 0))(
  ( (Nil!20548) (Cons!20547 (h!21709 tuple2!14650) (t!29120 List!20551)) )
))
(declare-datatypes ((ListLongMap!13361 0))(
  ( (ListLongMap!13362 (toList!6696 List!20551)) )
))
(declare-fun lt!433817 () ListLongMap!13361)

(declare-fun lt!433815 () tuple2!14650)

(declare-fun lt!433816 () tuple2!14650)

(declare-fun +!2902 (ListLongMap!13361 tuple2!14650) ListLongMap!13361)

(assert (=> b!978512 (= (+!2902 (+!2902 lt!433817 lt!433815) lt!433816) (+!2902 (+!2902 lt!433817 lt!433816) lt!433815))))

(declare-fun lt!433819 () V!35115)

(assert (=> b!978512 (= lt!433816 (tuple2!14651 (select (arr!29461 _keys!1544) from!1932) lt!433819))))

(declare-fun minValue!1220 () V!35115)

(assert (=> b!978512 (= lt!433815 (tuple2!14651 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32479 0))(
  ( (Unit!32480) )
))
(declare-fun lt!433818 () Unit!32479)

(declare-fun addCommutativeForDiffKeys!564 (ListLongMap!13361 (_ BitVec 64) V!35115 (_ BitVec 64) V!35115) Unit!32479)

(assert (=> b!978512 (= lt!433818 (addCommutativeForDiffKeys!564 lt!433817 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29461 _keys!1544) from!1932) lt!433819))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15271 (ValueCell!10818 V!35115) V!35115)

(declare-fun dynLambda!1738 (Int (_ BitVec 64)) V!35115)

(assert (=> b!978512 (= lt!433819 (get!15271 (select (arr!29460 _values!1278) from!1932) (dynLambda!1738 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!1220 () V!35115)

(declare-fun getCurrentListMapNoExtraKeys!3363 (array!61215 array!61213 (_ BitVec 32) (_ BitVec 32) V!35115 V!35115 (_ BitVec 32) Int) ListLongMap!13361)

(assert (=> b!978512 (= lt!433817 (+!2902 (getCurrentListMapNoExtraKeys!3363 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) (tuple2!14651 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))

(assert (= (and start!83824 res!654946) b!978510))

(assert (= (and b!978510 res!654947) b!978505))

(assert (= (and b!978505 res!654951) b!978508))

(assert (= (and b!978508 res!654945) b!978509))

(assert (= (and b!978509 res!654950) b!978506))

(assert (= (and b!978506 res!654948) b!978504))

(assert (= (and b!978504 res!654949) b!978512))

(assert (= (and b!978511 condMapEmpty!35927) mapIsEmpty!35927))

(assert (= (and b!978511 (not condMapEmpty!35927)) mapNonEmpty!35927))

(get-info :version)

(assert (= (and mapNonEmpty!35927 ((_ is ValueCellFull!10818) mapValue!35927)) b!978503))

(assert (= (and b!978511 ((_ is ValueCellFull!10818) mapDefault!35927)) b!978507))

(assert (= start!83824 b!978511))

(declare-fun b_lambda!14679 () Bool)

(assert (=> (not b_lambda!14679) (not b!978512)))

(declare-fun t!29118 () Bool)

(declare-fun tb!6419 () Bool)

(assert (=> (and start!83824 (= defaultEntry!1281 defaultEntry!1281) t!29118) tb!6419))

(declare-fun result!12819 () Bool)

(assert (=> tb!6419 (= result!12819 tp_is_empty!22599)))

(assert (=> b!978512 t!29118))

(declare-fun b_and!31319 () Bool)

(assert (= b_and!31317 (and (=> t!29118 result!12819) b_and!31319)))

(declare-fun m!905783 () Bool)

(assert (=> b!978505 m!905783))

(declare-fun m!905785 () Bool)

(assert (=> start!83824 m!905785))

(declare-fun m!905787 () Bool)

(assert (=> start!83824 m!905787))

(declare-fun m!905789 () Bool)

(assert (=> start!83824 m!905789))

(declare-fun m!905791 () Bool)

(assert (=> b!978512 m!905791))

(declare-fun m!905793 () Bool)

(assert (=> b!978512 m!905793))

(declare-fun m!905795 () Bool)

(assert (=> b!978512 m!905795))

(declare-fun m!905797 () Bool)

(assert (=> b!978512 m!905797))

(declare-fun m!905799 () Bool)

(assert (=> b!978512 m!905799))

(declare-fun m!905801 () Bool)

(assert (=> b!978512 m!905801))

(assert (=> b!978512 m!905791))

(declare-fun m!905803 () Bool)

(assert (=> b!978512 m!905803))

(assert (=> b!978512 m!905799))

(assert (=> b!978512 m!905795))

(declare-fun m!905805 () Bool)

(assert (=> b!978512 m!905805))

(assert (=> b!978512 m!905805))

(declare-fun m!905807 () Bool)

(assert (=> b!978512 m!905807))

(declare-fun m!905809 () Bool)

(assert (=> b!978512 m!905809))

(assert (=> b!978512 m!905793))

(assert (=> b!978512 m!905809))

(declare-fun m!905811 () Bool)

(assert (=> b!978512 m!905811))

(declare-fun m!905813 () Bool)

(assert (=> b!978508 m!905813))

(declare-fun m!905815 () Bool)

(assert (=> mapNonEmpty!35927 m!905815))

(assert (=> b!978506 m!905791))

(assert (=> b!978506 m!905791))

(declare-fun m!905817 () Bool)

(assert (=> b!978506 m!905817))

(check-sat tp_is_empty!22599 (not b_lambda!14679) (not mapNonEmpty!35927) (not b!978508) (not b_next!19605) (not b!978512) (not b!978505) (not b!978506) (not start!83824) b_and!31319)
(check-sat b_and!31319 (not b_next!19605))
