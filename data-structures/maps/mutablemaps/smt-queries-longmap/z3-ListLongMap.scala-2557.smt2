; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39170 () Bool)

(assert start!39170)

(declare-fun b_free!9429 () Bool)

(declare-fun b_next!9429 () Bool)

(assert (=> start!39170 (= b_free!9429 (not b_next!9429))))

(declare-fun tp!33816 () Bool)

(declare-fun b_and!16833 () Bool)

(assert (=> start!39170 (= tp!33816 b_and!16833)))

(declare-fun b!412062 () Bool)

(declare-fun e!246629 () Bool)

(declare-fun tp_is_empty!10581 () Bool)

(assert (=> b!412062 (= e!246629 tp_is_empty!10581)))

(declare-fun b!412063 () Bool)

(declare-fun res!239304 () Bool)

(declare-fun e!246628 () Bool)

(assert (=> b!412063 (=> (not res!239304) (not e!246628))))

(declare-datatypes ((array!25003 0))(
  ( (array!25004 (arr!11948 (Array (_ BitVec 32) (_ BitVec 64))) (size!12300 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25003)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15213 0))(
  ( (V!15214 (val!5335 Int)) )
))
(declare-datatypes ((ValueCell!4947 0))(
  ( (ValueCellFull!4947 (v!7578 V!15213)) (EmptyCell!4947) )
))
(declare-datatypes ((array!25005 0))(
  ( (array!25006 (arr!11949 (Array (_ BitVec 32) ValueCell!4947)) (size!12301 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25005)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!412063 (= res!239304 (and (= (size!12301 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12300 _keys!709) (size!12301 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!412064 () Bool)

(declare-fun e!246626 () Bool)

(declare-fun mapRes!17493 () Bool)

(assert (=> b!412064 (= e!246626 (and e!246629 mapRes!17493))))

(declare-fun condMapEmpty!17493 () Bool)

(declare-fun mapDefault!17493 () ValueCell!4947)

(assert (=> b!412064 (= condMapEmpty!17493 (= (arr!11949 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4947)) mapDefault!17493)))))

(declare-fun b!412065 () Bool)

(declare-fun res!239301 () Bool)

(assert (=> b!412065 (=> (not res!239301) (not e!246628))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!412065 (= res!239301 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12300 _keys!709))))))

(declare-fun b!412066 () Bool)

(declare-fun res!239310 () Bool)

(assert (=> b!412066 (=> (not res!239310) (not e!246628))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!412066 (= res!239310 (validKeyInArray!0 k0!794))))

(declare-fun b!412067 () Bool)

(declare-fun res!239309 () Bool)

(assert (=> b!412067 (=> (not res!239309) (not e!246628))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25003 (_ BitVec 32)) Bool)

(assert (=> b!412067 (= res!239309 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!412068 () Bool)

(declare-fun res!239305 () Bool)

(assert (=> b!412068 (=> (not res!239305) (not e!246628))))

(declare-fun arrayContainsKey!0 (array!25003 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!412068 (= res!239305 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!412069 () Bool)

(declare-fun res!239306 () Bool)

(declare-fun e!246631 () Bool)

(assert (=> b!412069 (=> (not res!239306) (not e!246631))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!412069 (= res!239306 (bvsle from!863 i!563))))

(declare-fun mapNonEmpty!17493 () Bool)

(declare-fun tp!33815 () Bool)

(declare-fun e!246630 () Bool)

(assert (=> mapNonEmpty!17493 (= mapRes!17493 (and tp!33815 e!246630))))

(declare-fun mapRest!17493 () (Array (_ BitVec 32) ValueCell!4947))

(declare-fun mapValue!17493 () ValueCell!4947)

(declare-fun mapKey!17493 () (_ BitVec 32))

(assert (=> mapNonEmpty!17493 (= (arr!11949 _values!549) (store mapRest!17493 mapKey!17493 mapValue!17493))))

(declare-fun res!239307 () Bool)

(assert (=> start!39170 (=> (not res!239307) (not e!246628))))

(assert (=> start!39170 (= res!239307 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12300 _keys!709))))))

(assert (=> start!39170 e!246628))

(assert (=> start!39170 tp_is_empty!10581))

(assert (=> start!39170 tp!33816))

(assert (=> start!39170 true))

(declare-fun array_inv!8714 (array!25005) Bool)

(assert (=> start!39170 (and (array_inv!8714 _values!549) e!246626)))

(declare-fun array_inv!8715 (array!25003) Bool)

(assert (=> start!39170 (array_inv!8715 _keys!709)))

(declare-fun b!412070 () Bool)

(declare-fun res!239308 () Bool)

(assert (=> b!412070 (=> (not res!239308) (not e!246631))))

(declare-fun lt!189406 () array!25003)

(declare-datatypes ((List!6907 0))(
  ( (Nil!6904) (Cons!6903 (h!7759 (_ BitVec 64)) (t!12089 List!6907)) )
))
(declare-fun arrayNoDuplicates!0 (array!25003 (_ BitVec 32) List!6907) Bool)

(assert (=> b!412070 (= res!239308 (arrayNoDuplicates!0 lt!189406 #b00000000000000000000000000000000 Nil!6904))))

(declare-fun b!412071 () Bool)

(declare-fun res!239299 () Bool)

(assert (=> b!412071 (=> (not res!239299) (not e!246628))))

(assert (=> b!412071 (= res!239299 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6904))))

(declare-fun b!412072 () Bool)

(declare-fun res!239300 () Bool)

(assert (=> b!412072 (=> (not res!239300) (not e!246628))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!412072 (= res!239300 (validMask!0 mask!1025))))

(declare-fun b!412073 () Bool)

(assert (=> b!412073 (= e!246628 e!246631)))

(declare-fun res!239302 () Bool)

(assert (=> b!412073 (=> (not res!239302) (not e!246631))))

(assert (=> b!412073 (= res!239302 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189406 mask!1025))))

(assert (=> b!412073 (= lt!189406 (array!25004 (store (arr!11948 _keys!709) i!563 k0!794) (size!12300 _keys!709)))))

(declare-fun mapIsEmpty!17493 () Bool)

(assert (=> mapIsEmpty!17493 mapRes!17493))

(declare-fun b!412074 () Bool)

(declare-fun res!239303 () Bool)

(assert (=> b!412074 (=> (not res!239303) (not e!246628))))

(assert (=> b!412074 (= res!239303 (or (= (select (arr!11948 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11948 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!412075 () Bool)

(assert (=> b!412075 (= e!246631 false)))

(declare-datatypes ((tuple2!6850 0))(
  ( (tuple2!6851 (_1!3435 (_ BitVec 64)) (_2!3435 V!15213)) )
))
(declare-datatypes ((List!6908 0))(
  ( (Nil!6905) (Cons!6904 (h!7760 tuple2!6850) (t!12090 List!6908)) )
))
(declare-datatypes ((ListLongMap!5777 0))(
  ( (ListLongMap!5778 (toList!2904 List!6908)) )
))
(declare-fun lt!189407 () ListLongMap!5777)

(declare-fun minValue!515 () V!15213)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!15213)

(declare-fun v!412 () V!15213)

(declare-fun getCurrentListMapNoExtraKeys!1114 (array!25003 array!25005 (_ BitVec 32) (_ BitVec 32) V!15213 V!15213 (_ BitVec 32) Int) ListLongMap!5777)

(assert (=> b!412075 (= lt!189407 (getCurrentListMapNoExtraKeys!1114 lt!189406 (array!25006 (store (arr!11949 _values!549) i!563 (ValueCellFull!4947 v!412)) (size!12301 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!189408 () ListLongMap!5777)

(assert (=> b!412075 (= lt!189408 (getCurrentListMapNoExtraKeys!1114 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!412076 () Bool)

(assert (=> b!412076 (= e!246630 tp_is_empty!10581)))

(assert (= (and start!39170 res!239307) b!412072))

(assert (= (and b!412072 res!239300) b!412063))

(assert (= (and b!412063 res!239304) b!412067))

(assert (= (and b!412067 res!239309) b!412071))

(assert (= (and b!412071 res!239299) b!412065))

(assert (= (and b!412065 res!239301) b!412066))

(assert (= (and b!412066 res!239310) b!412074))

(assert (= (and b!412074 res!239303) b!412068))

(assert (= (and b!412068 res!239305) b!412073))

(assert (= (and b!412073 res!239302) b!412070))

(assert (= (and b!412070 res!239308) b!412069))

(assert (= (and b!412069 res!239306) b!412075))

(assert (= (and b!412064 condMapEmpty!17493) mapIsEmpty!17493))

(assert (= (and b!412064 (not condMapEmpty!17493)) mapNonEmpty!17493))

(get-info :version)

(assert (= (and mapNonEmpty!17493 ((_ is ValueCellFull!4947) mapValue!17493)) b!412076))

(assert (= (and b!412064 ((_ is ValueCellFull!4947) mapDefault!17493)) b!412062))

(assert (= start!39170 b!412064))

(declare-fun m!401979 () Bool)

(assert (=> b!412068 m!401979))

(declare-fun m!401981 () Bool)

(assert (=> b!412066 m!401981))

(declare-fun m!401983 () Bool)

(assert (=> b!412074 m!401983))

(declare-fun m!401985 () Bool)

(assert (=> b!412073 m!401985))

(declare-fun m!401987 () Bool)

(assert (=> b!412073 m!401987))

(declare-fun m!401989 () Bool)

(assert (=> start!39170 m!401989))

(declare-fun m!401991 () Bool)

(assert (=> start!39170 m!401991))

(declare-fun m!401993 () Bool)

(assert (=> b!412070 m!401993))

(declare-fun m!401995 () Bool)

(assert (=> b!412072 m!401995))

(declare-fun m!401997 () Bool)

(assert (=> b!412071 m!401997))

(declare-fun m!401999 () Bool)

(assert (=> b!412075 m!401999))

(declare-fun m!402001 () Bool)

(assert (=> b!412075 m!402001))

(declare-fun m!402003 () Bool)

(assert (=> b!412075 m!402003))

(declare-fun m!402005 () Bool)

(assert (=> mapNonEmpty!17493 m!402005))

(declare-fun m!402007 () Bool)

(assert (=> b!412067 m!402007))

(check-sat (not b!412067) (not start!39170) (not b!412075) (not b!412072) (not b!412071) (not b_next!9429) (not b!412068) (not mapNonEmpty!17493) (not b!412066) (not b!412073) tp_is_empty!10581 (not b!412070) b_and!16833)
(check-sat b_and!16833 (not b_next!9429))
