; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20420 () Bool)

(assert start!20420)

(declare-fun b_free!5067 () Bool)

(declare-fun b_next!5067 () Bool)

(assert (=> start!20420 (= b_free!5067 (not b_next!5067))))

(declare-fun tp!18232 () Bool)

(declare-fun b_and!11831 () Bool)

(assert (=> start!20420 (= tp!18232 b_and!11831)))

(declare-fun b!201790 () Bool)

(declare-fun res!96549 () Bool)

(declare-fun e!132235 () Bool)

(assert (=> b!201790 (=> (not res!96549) (not e!132235))))

(declare-datatypes ((array!9074 0))(
  ( (array!9075 (arr!4287 (Array (_ BitVec 32) (_ BitVec 64))) (size!4612 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9074)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9074 (_ BitVec 32)) Bool)

(assert (=> b!201790 (= res!96549 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!201791 () Bool)

(declare-fun res!96546 () Bool)

(assert (=> b!201791 (=> (not res!96546) (not e!132235))))

(declare-datatypes ((List!2728 0))(
  ( (Nil!2725) (Cons!2724 (h!3366 (_ BitVec 64)) (t!7667 List!2728)) )
))
(declare-fun arrayNoDuplicates!0 (array!9074 (_ BitVec 32) List!2728) Bool)

(assert (=> b!201791 (= res!96546 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2725))))

(declare-fun b!201792 () Bool)

(declare-fun e!132232 () Bool)

(declare-fun e!132237 () Bool)

(declare-fun mapRes!8453 () Bool)

(assert (=> b!201792 (= e!132232 (and e!132237 mapRes!8453))))

(declare-fun condMapEmpty!8453 () Bool)

(declare-datatypes ((V!6211 0))(
  ( (V!6212 (val!2506 Int)) )
))
(declare-datatypes ((ValueCell!2118 0))(
  ( (ValueCellFull!2118 (v!4472 V!6211)) (EmptyCell!2118) )
))
(declare-datatypes ((array!9076 0))(
  ( (array!9077 (arr!4288 (Array (_ BitVec 32) ValueCell!2118)) (size!4613 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9076)

(declare-fun mapDefault!8453 () ValueCell!2118)

(assert (=> b!201792 (= condMapEmpty!8453 (= (arr!4288 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2118)) mapDefault!8453)))))

(declare-fun b!201793 () Bool)

(declare-fun tp_is_empty!4923 () Bool)

(assert (=> b!201793 (= e!132237 tp_is_empty!4923)))

(declare-fun b!201795 () Bool)

(declare-fun res!96544 () Bool)

(assert (=> b!201795 (=> (not res!96544) (not e!132235))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!201795 (= res!96544 (= (select (arr!4287 _keys!825) i!601) k0!843))))

(declare-fun b!201796 () Bool)

(declare-fun res!96542 () Bool)

(assert (=> b!201796 (=> (not res!96542) (not e!132235))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!201796 (= res!96542 (and (= (size!4613 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4612 _keys!825) (size!4613 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!8453 () Bool)

(assert (=> mapIsEmpty!8453 mapRes!8453))

(declare-fun b!201797 () Bool)

(declare-fun e!132236 () Bool)

(assert (=> b!201797 (= e!132236 tp_is_empty!4923)))

(declare-fun b!201798 () Bool)

(declare-fun e!132233 () Bool)

(declare-fun e!132234 () Bool)

(assert (=> b!201798 (= e!132233 e!132234)))

(declare-fun res!96547 () Bool)

(assert (=> b!201798 (=> res!96547 e!132234)))

(assert (=> b!201798 (= res!96547 (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!3794 0))(
  ( (tuple2!3795 (_1!1907 (_ BitVec 64)) (_2!1907 V!6211)) )
))
(declare-datatypes ((List!2729 0))(
  ( (Nil!2726) (Cons!2725 (h!3367 tuple2!3794) (t!7668 List!2729)) )
))
(declare-datatypes ((ListLongMap!2721 0))(
  ( (ListLongMap!2722 (toList!1376 List!2729)) )
))
(declare-fun lt!100918 () ListLongMap!2721)

(declare-fun lt!100928 () ListLongMap!2721)

(assert (=> b!201798 (= lt!100918 lt!100928)))

(declare-fun lt!100933 () ListLongMap!2721)

(declare-fun lt!100932 () tuple2!3794)

(declare-fun +!393 (ListLongMap!2721 tuple2!3794) ListLongMap!2721)

(assert (=> b!201798 (= lt!100928 (+!393 lt!100933 lt!100932))))

(declare-datatypes ((Unit!6093 0))(
  ( (Unit!6094) )
))
(declare-fun lt!100919 () Unit!6093)

(declare-fun lt!100929 () ListLongMap!2721)

(declare-fun v!520 () V!6211)

(declare-fun zeroValue!615 () V!6211)

(declare-fun addCommutativeForDiffKeys!114 (ListLongMap!2721 (_ BitVec 64) V!6211 (_ BitVec 64) V!6211) Unit!6093)

(assert (=> b!201798 (= lt!100919 (addCommutativeForDiffKeys!114 lt!100929 k0!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun lt!100924 () ListLongMap!2721)

(declare-fun lt!100930 () tuple2!3794)

(assert (=> b!201798 (= lt!100924 (+!393 lt!100918 lt!100930))))

(declare-fun lt!100921 () ListLongMap!2721)

(declare-fun lt!100931 () tuple2!3794)

(assert (=> b!201798 (= lt!100918 (+!393 lt!100921 lt!100931))))

(declare-fun lt!100926 () ListLongMap!2721)

(declare-fun lt!100922 () ListLongMap!2721)

(assert (=> b!201798 (= lt!100926 lt!100922)))

(assert (=> b!201798 (= lt!100922 (+!393 lt!100933 lt!100930))))

(assert (=> b!201798 (= lt!100933 (+!393 lt!100929 lt!100931))))

(declare-fun lt!100925 () ListLongMap!2721)

(assert (=> b!201798 (= lt!100924 (+!393 (+!393 lt!100925 lt!100931) lt!100930))))

(declare-fun minValue!615 () V!6211)

(assert (=> b!201798 (= lt!100930 (tuple2!3795 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (=> b!201798 (= lt!100931 (tuple2!3795 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun mapNonEmpty!8453 () Bool)

(declare-fun tp!18233 () Bool)

(assert (=> mapNonEmpty!8453 (= mapRes!8453 (and tp!18233 e!132236))))

(declare-fun mapKey!8453 () (_ BitVec 32))

(declare-fun mapRest!8453 () (Array (_ BitVec 32) ValueCell!2118))

(declare-fun mapValue!8453 () ValueCell!2118)

(assert (=> mapNonEmpty!8453 (= (arr!4288 _values!649) (store mapRest!8453 mapKey!8453 mapValue!8453))))

(declare-fun b!201799 () Bool)

(assert (=> b!201799 (= e!132235 (not e!132233))))

(declare-fun res!96548 () Bool)

(assert (=> b!201799 (=> res!96548 e!132233)))

(assert (=> b!201799 (= res!96548 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!657 () Int)

(declare-fun getCurrentListMap!956 (array!9074 array!9076 (_ BitVec 32) (_ BitVec 32) V!6211 V!6211 (_ BitVec 32) Int) ListLongMap!2721)

(assert (=> b!201799 (= lt!100926 (getCurrentListMap!956 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!100920 () array!9076)

(assert (=> b!201799 (= lt!100924 (getCurrentListMap!956 _keys!825 lt!100920 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!201799 (and (= lt!100925 lt!100921) (= lt!100921 lt!100925))))

(assert (=> b!201799 (= lt!100921 (+!393 lt!100929 lt!100932))))

(assert (=> b!201799 (= lt!100932 (tuple2!3795 k0!843 v!520))))

(declare-fun lt!100927 () Unit!6093)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!69 (array!9074 array!9076 (_ BitVec 32) (_ BitVec 32) V!6211 V!6211 (_ BitVec 32) (_ BitVec 64) V!6211 (_ BitVec 32) Int) Unit!6093)

(assert (=> b!201799 (= lt!100927 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!69 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!327 (array!9074 array!9076 (_ BitVec 32) (_ BitVec 32) V!6211 V!6211 (_ BitVec 32) Int) ListLongMap!2721)

(assert (=> b!201799 (= lt!100925 (getCurrentListMapNoExtraKeys!327 _keys!825 lt!100920 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!201799 (= lt!100920 (array!9077 (store (arr!4288 _values!649) i!601 (ValueCellFull!2118 v!520)) (size!4613 _values!649)))))

(assert (=> b!201799 (= lt!100929 (getCurrentListMapNoExtraKeys!327 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun res!96550 () Bool)

(assert (=> start!20420 (=> (not res!96550) (not e!132235))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20420 (= res!96550 (validMask!0 mask!1149))))

(assert (=> start!20420 e!132235))

(declare-fun array_inv!2819 (array!9076) Bool)

(assert (=> start!20420 (and (array_inv!2819 _values!649) e!132232)))

(assert (=> start!20420 true))

(assert (=> start!20420 tp_is_empty!4923))

(declare-fun array_inv!2820 (array!9074) Bool)

(assert (=> start!20420 (array_inv!2820 _keys!825)))

(assert (=> start!20420 tp!18232))

(declare-fun b!201794 () Bool)

(declare-fun res!96543 () Bool)

(assert (=> b!201794 (=> (not res!96543) (not e!132235))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!201794 (= res!96543 (validKeyInArray!0 k0!843))))

(declare-fun b!201800 () Bool)

(assert (=> b!201800 (= e!132234 true)))

(assert (=> b!201800 (= (+!393 lt!100928 lt!100930) (+!393 lt!100922 lt!100932))))

(declare-fun lt!100923 () Unit!6093)

(assert (=> b!201800 (= lt!100923 (addCommutativeForDiffKeys!114 lt!100933 k0!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!201801 () Bool)

(declare-fun res!96545 () Bool)

(assert (=> b!201801 (=> (not res!96545) (not e!132235))))

(assert (=> b!201801 (= res!96545 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4612 _keys!825))))))

(assert (= (and start!20420 res!96550) b!201796))

(assert (= (and b!201796 res!96542) b!201790))

(assert (= (and b!201790 res!96549) b!201791))

(assert (= (and b!201791 res!96546) b!201801))

(assert (= (and b!201801 res!96545) b!201794))

(assert (= (and b!201794 res!96543) b!201795))

(assert (= (and b!201795 res!96544) b!201799))

(assert (= (and b!201799 (not res!96548)) b!201798))

(assert (= (and b!201798 (not res!96547)) b!201800))

(assert (= (and b!201792 condMapEmpty!8453) mapIsEmpty!8453))

(assert (= (and b!201792 (not condMapEmpty!8453)) mapNonEmpty!8453))

(get-info :version)

(assert (= (and mapNonEmpty!8453 ((_ is ValueCellFull!2118) mapValue!8453)) b!201797))

(assert (= (and b!201792 ((_ is ValueCellFull!2118) mapDefault!8453)) b!201793))

(assert (= start!20420 b!201792))

(declare-fun m!228913 () Bool)

(assert (=> b!201795 m!228913))

(declare-fun m!228915 () Bool)

(assert (=> b!201794 m!228915))

(declare-fun m!228917 () Bool)

(assert (=> b!201791 m!228917))

(declare-fun m!228919 () Bool)

(assert (=> b!201790 m!228919))

(declare-fun m!228921 () Bool)

(assert (=> start!20420 m!228921))

(declare-fun m!228923 () Bool)

(assert (=> start!20420 m!228923))

(declare-fun m!228925 () Bool)

(assert (=> start!20420 m!228925))

(declare-fun m!228927 () Bool)

(assert (=> mapNonEmpty!8453 m!228927))

(declare-fun m!228929 () Bool)

(assert (=> b!201798 m!228929))

(declare-fun m!228931 () Bool)

(assert (=> b!201798 m!228931))

(declare-fun m!228933 () Bool)

(assert (=> b!201798 m!228933))

(declare-fun m!228935 () Bool)

(assert (=> b!201798 m!228935))

(declare-fun m!228937 () Bool)

(assert (=> b!201798 m!228937))

(declare-fun m!228939 () Bool)

(assert (=> b!201798 m!228939))

(declare-fun m!228941 () Bool)

(assert (=> b!201798 m!228941))

(assert (=> b!201798 m!228929))

(declare-fun m!228943 () Bool)

(assert (=> b!201798 m!228943))

(declare-fun m!228945 () Bool)

(assert (=> b!201800 m!228945))

(declare-fun m!228947 () Bool)

(assert (=> b!201800 m!228947))

(declare-fun m!228949 () Bool)

(assert (=> b!201800 m!228949))

(declare-fun m!228951 () Bool)

(assert (=> b!201799 m!228951))

(declare-fun m!228953 () Bool)

(assert (=> b!201799 m!228953))

(declare-fun m!228955 () Bool)

(assert (=> b!201799 m!228955))

(declare-fun m!228957 () Bool)

(assert (=> b!201799 m!228957))

(declare-fun m!228959 () Bool)

(assert (=> b!201799 m!228959))

(declare-fun m!228961 () Bool)

(assert (=> b!201799 m!228961))

(declare-fun m!228963 () Bool)

(assert (=> b!201799 m!228963))

(check-sat (not b!201790) tp_is_empty!4923 (not b!201799) b_and!11831 (not b!201800) (not mapNonEmpty!8453) (not b!201794) (not b!201798) (not start!20420) (not b!201791) (not b_next!5067))
(check-sat b_and!11831 (not b_next!5067))
