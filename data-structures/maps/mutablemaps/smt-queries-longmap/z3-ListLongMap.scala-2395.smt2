; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37932 () Bool)

(assert start!37932)

(declare-fun b_free!8937 () Bool)

(declare-fun b_next!8937 () Bool)

(assert (=> start!37932 (= b_free!8937 (not b_next!8937))))

(declare-fun tp!31574 () Bool)

(declare-fun b_and!16245 () Bool)

(assert (=> start!37932 (= tp!31574 b_and!16245)))

(declare-fun b!389697 () Bool)

(declare-fun e!236102 () Bool)

(declare-fun e!236100 () Bool)

(assert (=> b!389697 (= e!236102 e!236100)))

(declare-fun res!222984 () Bool)

(assert (=> b!389697 (=> res!222984 e!236100)))

(declare-fun k0!778 () (_ BitVec 64))

(assert (=> b!389697 (= res!222984 (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((V!13917 0))(
  ( (V!13918 (val!4849 Int)) )
))
(declare-datatypes ((tuple2!6468 0))(
  ( (tuple2!6469 (_1!3244 (_ BitVec 64)) (_2!3244 V!13917)) )
))
(declare-datatypes ((List!6351 0))(
  ( (Nil!6348) (Cons!6347 (h!7203 tuple2!6468) (t!11517 List!6351)) )
))
(declare-datatypes ((ListLongMap!5395 0))(
  ( (ListLongMap!5396 (toList!2713 List!6351)) )
))
(declare-fun lt!183463 () ListLongMap!5395)

(declare-fun lt!183477 () ListLongMap!5395)

(assert (=> b!389697 (= lt!183463 lt!183477)))

(declare-fun lt!183471 () ListLongMap!5395)

(declare-fun lt!183466 () tuple2!6468)

(declare-fun +!1011 (ListLongMap!5395 tuple2!6468) ListLongMap!5395)

(assert (=> b!389697 (= lt!183477 (+!1011 lt!183471 lt!183466))))

(declare-fun lt!183465 () ListLongMap!5395)

(declare-fun v!373 () V!13917)

(declare-datatypes ((Unit!11911 0))(
  ( (Unit!11912) )
))
(declare-fun lt!183468 () Unit!11911)

(declare-fun zeroValue!472 () V!13917)

(declare-fun addCommutativeForDiffKeys!328 (ListLongMap!5395 (_ BitVec 64) V!13917 (_ BitVec 64) V!13917) Unit!11911)

(assert (=> b!389697 (= lt!183468 (addCommutativeForDiffKeys!328 lt!183465 k0!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun lt!183476 () ListLongMap!5395)

(declare-fun lt!183467 () tuple2!6468)

(assert (=> b!389697 (= lt!183476 (+!1011 lt!183463 lt!183467))))

(declare-fun lt!183464 () ListLongMap!5395)

(declare-fun lt!183474 () tuple2!6468)

(assert (=> b!389697 (= lt!183463 (+!1011 lt!183464 lt!183474))))

(declare-fun lt!183475 () ListLongMap!5395)

(declare-fun lt!183472 () ListLongMap!5395)

(assert (=> b!389697 (= lt!183475 lt!183472)))

(assert (=> b!389697 (= lt!183472 (+!1011 lt!183471 lt!183467))))

(assert (=> b!389697 (= lt!183471 (+!1011 lt!183465 lt!183474))))

(declare-fun lt!183470 () ListLongMap!5395)

(assert (=> b!389697 (= lt!183476 (+!1011 (+!1011 lt!183470 lt!183474) lt!183467))))

(declare-fun minValue!472 () V!13917)

(assert (=> b!389697 (= lt!183467 (tuple2!6469 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (=> b!389697 (= lt!183474 (tuple2!6469 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun mapNonEmpty!15990 () Bool)

(declare-fun mapRes!15990 () Bool)

(declare-fun tp!31575 () Bool)

(declare-fun e!236103 () Bool)

(assert (=> mapNonEmpty!15990 (= mapRes!15990 (and tp!31575 e!236103))))

(declare-fun mapKey!15990 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4461 0))(
  ( (ValueCellFull!4461 (v!7058 V!13917)) (EmptyCell!4461) )
))
(declare-datatypes ((array!23093 0))(
  ( (array!23094 (arr!11008 (Array (_ BitVec 32) ValueCell!4461)) (size!11360 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23093)

(declare-fun mapRest!15990 () (Array (_ BitVec 32) ValueCell!4461))

(declare-fun mapValue!15990 () ValueCell!4461)

(assert (=> mapNonEmpty!15990 (= (arr!11008 _values!506) (store mapRest!15990 mapKey!15990 mapValue!15990))))

(declare-fun b!389698 () Bool)

(declare-fun res!222990 () Bool)

(declare-fun e!236105 () Bool)

(assert (=> b!389698 (=> (not res!222990) (not e!236105))))

(declare-datatypes ((array!23095 0))(
  ( (array!23096 (arr!11009 (Array (_ BitVec 32) (_ BitVec 64))) (size!11361 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23095)

(declare-datatypes ((List!6352 0))(
  ( (Nil!6349) (Cons!6348 (h!7204 (_ BitVec 64)) (t!11518 List!6352)) )
))
(declare-fun arrayNoDuplicates!0 (array!23095 (_ BitVec 32) List!6352) Bool)

(assert (=> b!389698 (= res!222990 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6349))))

(declare-fun b!389699 () Bool)

(declare-fun res!222981 () Bool)

(assert (=> b!389699 (=> (not res!222981) (not e!236105))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!389699 (= res!222981 (and (= (size!11360 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11361 _keys!658) (size!11360 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun res!222985 () Bool)

(assert (=> start!37932 (=> (not res!222985) (not e!236105))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37932 (= res!222985 (validMask!0 mask!970))))

(assert (=> start!37932 e!236105))

(declare-fun e!236101 () Bool)

(declare-fun array_inv!8070 (array!23093) Bool)

(assert (=> start!37932 (and (array_inv!8070 _values!506) e!236101)))

(assert (=> start!37932 tp!31574))

(assert (=> start!37932 true))

(declare-fun tp_is_empty!9609 () Bool)

(assert (=> start!37932 tp_is_empty!9609))

(declare-fun array_inv!8071 (array!23095) Bool)

(assert (=> start!37932 (array_inv!8071 _keys!658)))

(declare-fun b!389700 () Bool)

(assert (=> b!389700 (= e!236100 true)))

(assert (=> b!389700 (= (+!1011 lt!183477 lt!183467) (+!1011 lt!183472 lt!183466))))

(declare-fun lt!183473 () Unit!11911)

(assert (=> b!389700 (= lt!183473 (addCommutativeForDiffKeys!328 lt!183471 k0!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun mapIsEmpty!15990 () Bool)

(assert (=> mapIsEmpty!15990 mapRes!15990))

(declare-fun b!389701 () Bool)

(declare-fun res!222983 () Bool)

(assert (=> b!389701 (=> (not res!222983) (not e!236105))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23095 (_ BitVec 32)) Bool)

(assert (=> b!389701 (= res!222983 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!389702 () Bool)

(declare-fun res!222987 () Bool)

(assert (=> b!389702 (=> (not res!222987) (not e!236105))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!389702 (= res!222987 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11361 _keys!658))))))

(declare-fun b!389703 () Bool)

(declare-fun res!222991 () Bool)

(assert (=> b!389703 (=> (not res!222991) (not e!236105))))

(assert (=> b!389703 (= res!222991 (or (= (select (arr!11009 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11009 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!389704 () Bool)

(declare-fun res!222982 () Bool)

(declare-fun e!236104 () Bool)

(assert (=> b!389704 (=> (not res!222982) (not e!236104))))

(declare-fun lt!183478 () array!23095)

(assert (=> b!389704 (= res!222982 (arrayNoDuplicates!0 lt!183478 #b00000000000000000000000000000000 Nil!6349))))

(declare-fun b!389705 () Bool)

(assert (=> b!389705 (= e!236105 e!236104)))

(declare-fun res!222986 () Bool)

(assert (=> b!389705 (=> (not res!222986) (not e!236104))))

(assert (=> b!389705 (= res!222986 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!183478 mask!970))))

(assert (=> b!389705 (= lt!183478 (array!23096 (store (arr!11009 _keys!658) i!548 k0!778) (size!11361 _keys!658)))))

(declare-fun b!389706 () Bool)

(declare-fun res!222989 () Bool)

(assert (=> b!389706 (=> (not res!222989) (not e!236105))))

(declare-fun arrayContainsKey!0 (array!23095 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!389706 (= res!222989 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!389707 () Bool)

(declare-fun res!222988 () Bool)

(assert (=> b!389707 (=> (not res!222988) (not e!236105))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!389707 (= res!222988 (validKeyInArray!0 k0!778))))

(declare-fun b!389708 () Bool)

(assert (=> b!389708 (= e!236103 tp_is_empty!9609)))

(declare-fun b!389709 () Bool)

(assert (=> b!389709 (= e!236104 (not e!236102))))

(declare-fun res!222980 () Bool)

(assert (=> b!389709 (=> res!222980 e!236102)))

(assert (=> b!389709 (= res!222980 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun getCurrentListMap!2081 (array!23095 array!23093 (_ BitVec 32) (_ BitVec 32) V!13917 V!13917 (_ BitVec 32) Int) ListLongMap!5395)

(assert (=> b!389709 (= lt!183475 (getCurrentListMap!2081 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!183469 () array!23093)

(assert (=> b!389709 (= lt!183476 (getCurrentListMap!2081 lt!183478 lt!183469 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!389709 (and (= lt!183470 lt!183464) (= lt!183464 lt!183470))))

(assert (=> b!389709 (= lt!183464 (+!1011 lt!183465 lt!183466))))

(assert (=> b!389709 (= lt!183466 (tuple2!6469 k0!778 v!373))))

(declare-fun lt!183462 () Unit!11911)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!238 (array!23095 array!23093 (_ BitVec 32) (_ BitVec 32) V!13917 V!13917 (_ BitVec 32) (_ BitVec 64) V!13917 (_ BitVec 32) Int) Unit!11911)

(assert (=> b!389709 (= lt!183462 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!238 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!943 (array!23095 array!23093 (_ BitVec 32) (_ BitVec 32) V!13917 V!13917 (_ BitVec 32) Int) ListLongMap!5395)

(assert (=> b!389709 (= lt!183470 (getCurrentListMapNoExtraKeys!943 lt!183478 lt!183469 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!389709 (= lt!183469 (array!23094 (store (arr!11008 _values!506) i!548 (ValueCellFull!4461 v!373)) (size!11360 _values!506)))))

(assert (=> b!389709 (= lt!183465 (getCurrentListMapNoExtraKeys!943 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!389710 () Bool)

(declare-fun e!236107 () Bool)

(assert (=> b!389710 (= e!236101 (and e!236107 mapRes!15990))))

(declare-fun condMapEmpty!15990 () Bool)

(declare-fun mapDefault!15990 () ValueCell!4461)

(assert (=> b!389710 (= condMapEmpty!15990 (= (arr!11008 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4461)) mapDefault!15990)))))

(declare-fun b!389711 () Bool)

(assert (=> b!389711 (= e!236107 tp_is_empty!9609)))

(assert (= (and start!37932 res!222985) b!389699))

(assert (= (and b!389699 res!222981) b!389701))

(assert (= (and b!389701 res!222983) b!389698))

(assert (= (and b!389698 res!222990) b!389702))

(assert (= (and b!389702 res!222987) b!389707))

(assert (= (and b!389707 res!222988) b!389703))

(assert (= (and b!389703 res!222991) b!389706))

(assert (= (and b!389706 res!222989) b!389705))

(assert (= (and b!389705 res!222986) b!389704))

(assert (= (and b!389704 res!222982) b!389709))

(assert (= (and b!389709 (not res!222980)) b!389697))

(assert (= (and b!389697 (not res!222984)) b!389700))

(assert (= (and b!389710 condMapEmpty!15990) mapIsEmpty!15990))

(assert (= (and b!389710 (not condMapEmpty!15990)) mapNonEmpty!15990))

(get-info :version)

(assert (= (and mapNonEmpty!15990 ((_ is ValueCellFull!4461) mapValue!15990)) b!389708))

(assert (= (and b!389710 ((_ is ValueCellFull!4461) mapDefault!15990)) b!389711))

(assert (= start!37932 b!389710))

(declare-fun m!385945 () Bool)

(assert (=> mapNonEmpty!15990 m!385945))

(declare-fun m!385947 () Bool)

(assert (=> b!389703 m!385947))

(declare-fun m!385949 () Bool)

(assert (=> b!389701 m!385949))

(declare-fun m!385951 () Bool)

(assert (=> b!389698 m!385951))

(declare-fun m!385953 () Bool)

(assert (=> b!389697 m!385953))

(declare-fun m!385955 () Bool)

(assert (=> b!389697 m!385955))

(declare-fun m!385957 () Bool)

(assert (=> b!389697 m!385957))

(declare-fun m!385959 () Bool)

(assert (=> b!389697 m!385959))

(declare-fun m!385961 () Bool)

(assert (=> b!389697 m!385961))

(assert (=> b!389697 m!385957))

(declare-fun m!385963 () Bool)

(assert (=> b!389697 m!385963))

(declare-fun m!385965 () Bool)

(assert (=> b!389697 m!385965))

(declare-fun m!385967 () Bool)

(assert (=> b!389697 m!385967))

(declare-fun m!385969 () Bool)

(assert (=> b!389706 m!385969))

(declare-fun m!385971 () Bool)

(assert (=> b!389709 m!385971))

(declare-fun m!385973 () Bool)

(assert (=> b!389709 m!385973))

(declare-fun m!385975 () Bool)

(assert (=> b!389709 m!385975))

(declare-fun m!385977 () Bool)

(assert (=> b!389709 m!385977))

(declare-fun m!385979 () Bool)

(assert (=> b!389709 m!385979))

(declare-fun m!385981 () Bool)

(assert (=> b!389709 m!385981))

(declare-fun m!385983 () Bool)

(assert (=> b!389709 m!385983))

(declare-fun m!385985 () Bool)

(assert (=> b!389705 m!385985))

(declare-fun m!385987 () Bool)

(assert (=> b!389705 m!385987))

(declare-fun m!385989 () Bool)

(assert (=> b!389707 m!385989))

(declare-fun m!385991 () Bool)

(assert (=> b!389700 m!385991))

(declare-fun m!385993 () Bool)

(assert (=> b!389700 m!385993))

(declare-fun m!385995 () Bool)

(assert (=> b!389700 m!385995))

(declare-fun m!385997 () Bool)

(assert (=> b!389704 m!385997))

(declare-fun m!385999 () Bool)

(assert (=> start!37932 m!385999))

(declare-fun m!386001 () Bool)

(assert (=> start!37932 m!386001))

(declare-fun m!386003 () Bool)

(assert (=> start!37932 m!386003))

(check-sat (not b!389709) (not b!389705) (not b!389701) (not b!389698) (not b!389707) b_and!16245 (not b!389700) (not b!389706) (not b_next!8937) (not b!389697) tp_is_empty!9609 (not b!389704) (not mapNonEmpty!15990) (not start!37932))
(check-sat b_and!16245 (not b_next!8937))
