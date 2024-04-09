; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38534 () Bool)

(assert start!38534)

(declare-fun b!397958 () Bool)

(declare-fun res!228708 () Bool)

(declare-fun e!240578 () Bool)

(assert (=> b!397958 (=> (not res!228708) (not e!240578))))

(declare-datatypes ((array!23773 0))(
  ( (array!23774 (arr!11333 (Array (_ BitVec 32) (_ BitVec 64))) (size!11685 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23773)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23773 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!397958 (= res!228708 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!397959 () Bool)

(declare-fun res!228705 () Bool)

(assert (=> b!397959 (=> (not res!228705) (not e!240578))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!397959 (= res!228705 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11685 _keys!709))))))

(declare-fun b!397960 () Bool)

(declare-fun res!228710 () Bool)

(assert (=> b!397960 (=> (not res!228710) (not e!240578))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!397960 (= res!228710 (validMask!0 mask!1025))))

(declare-fun b!397961 () Bool)

(declare-fun res!228714 () Bool)

(assert (=> b!397961 (=> (not res!228714) (not e!240578))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!397961 (= res!228714 (validKeyInArray!0 k0!794))))

(declare-fun res!228713 () Bool)

(assert (=> start!38534 (=> (not res!228713) (not e!240578))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38534 (= res!228713 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11685 _keys!709))))))

(assert (=> start!38534 e!240578))

(assert (=> start!38534 true))

(declare-datatypes ((V!14365 0))(
  ( (V!14366 (val!5017 Int)) )
))
(declare-datatypes ((ValueCell!4629 0))(
  ( (ValueCellFull!4629 (v!7260 V!14365)) (EmptyCell!4629) )
))
(declare-datatypes ((array!23775 0))(
  ( (array!23776 (arr!11334 (Array (_ BitVec 32) ValueCell!4629)) (size!11686 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23775)

(declare-fun e!240580 () Bool)

(declare-fun array_inv!8296 (array!23775) Bool)

(assert (=> start!38534 (and (array_inv!8296 _values!549) e!240580)))

(declare-fun array_inv!8297 (array!23773) Bool)

(assert (=> start!38534 (array_inv!8297 _keys!709)))

(declare-fun b!397962 () Bool)

(declare-fun e!240579 () Bool)

(assert (=> b!397962 (= e!240579 false)))

(declare-fun lt!187377 () Bool)

(declare-fun lt!187376 () array!23773)

(declare-datatypes ((List!6526 0))(
  ( (Nil!6523) (Cons!6522 (h!7378 (_ BitVec 64)) (t!11708 List!6526)) )
))
(declare-fun arrayNoDuplicates!0 (array!23773 (_ BitVec 32) List!6526) Bool)

(assert (=> b!397962 (= lt!187377 (arrayNoDuplicates!0 lt!187376 #b00000000000000000000000000000000 Nil!6523))))

(declare-fun b!397963 () Bool)

(declare-fun res!228707 () Bool)

(assert (=> b!397963 (=> (not res!228707) (not e!240578))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!397963 (= res!228707 (and (= (size!11686 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11685 _keys!709) (size!11686 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!397964 () Bool)

(declare-fun res!228711 () Bool)

(assert (=> b!397964 (=> (not res!228711) (not e!240578))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23773 (_ BitVec 32)) Bool)

(assert (=> b!397964 (= res!228711 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!397965 () Bool)

(declare-fun res!228712 () Bool)

(assert (=> b!397965 (=> (not res!228712) (not e!240578))))

(assert (=> b!397965 (= res!228712 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6523))))

(declare-fun mapIsEmpty!16539 () Bool)

(declare-fun mapRes!16539 () Bool)

(assert (=> mapIsEmpty!16539 mapRes!16539))

(declare-fun b!397966 () Bool)

(declare-fun e!240582 () Bool)

(declare-fun tp_is_empty!9945 () Bool)

(assert (=> b!397966 (= e!240582 tp_is_empty!9945)))

(declare-fun b!397967 () Bool)

(declare-fun e!240583 () Bool)

(assert (=> b!397967 (= e!240583 tp_is_empty!9945)))

(declare-fun b!397968 () Bool)

(declare-fun res!228706 () Bool)

(assert (=> b!397968 (=> (not res!228706) (not e!240578))))

(assert (=> b!397968 (= res!228706 (or (= (select (arr!11333 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11333 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!397969 () Bool)

(assert (=> b!397969 (= e!240580 (and e!240582 mapRes!16539))))

(declare-fun condMapEmpty!16539 () Bool)

(declare-fun mapDefault!16539 () ValueCell!4629)

(assert (=> b!397969 (= condMapEmpty!16539 (= (arr!11334 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4629)) mapDefault!16539)))))

(declare-fun b!397970 () Bool)

(assert (=> b!397970 (= e!240578 e!240579)))

(declare-fun res!228709 () Bool)

(assert (=> b!397970 (=> (not res!228709) (not e!240579))))

(assert (=> b!397970 (= res!228709 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187376 mask!1025))))

(assert (=> b!397970 (= lt!187376 (array!23774 (store (arr!11333 _keys!709) i!563 k0!794) (size!11685 _keys!709)))))

(declare-fun mapNonEmpty!16539 () Bool)

(declare-fun tp!32334 () Bool)

(assert (=> mapNonEmpty!16539 (= mapRes!16539 (and tp!32334 e!240583))))

(declare-fun mapValue!16539 () ValueCell!4629)

(declare-fun mapRest!16539 () (Array (_ BitVec 32) ValueCell!4629))

(declare-fun mapKey!16539 () (_ BitVec 32))

(assert (=> mapNonEmpty!16539 (= (arr!11334 _values!549) (store mapRest!16539 mapKey!16539 mapValue!16539))))

(assert (= (and start!38534 res!228713) b!397960))

(assert (= (and b!397960 res!228710) b!397963))

(assert (= (and b!397963 res!228707) b!397964))

(assert (= (and b!397964 res!228711) b!397965))

(assert (= (and b!397965 res!228712) b!397959))

(assert (= (and b!397959 res!228705) b!397961))

(assert (= (and b!397961 res!228714) b!397968))

(assert (= (and b!397968 res!228706) b!397958))

(assert (= (and b!397958 res!228708) b!397970))

(assert (= (and b!397970 res!228709) b!397962))

(assert (= (and b!397969 condMapEmpty!16539) mapIsEmpty!16539))

(assert (= (and b!397969 (not condMapEmpty!16539)) mapNonEmpty!16539))

(get-info :version)

(assert (= (and mapNonEmpty!16539 ((_ is ValueCellFull!4629) mapValue!16539)) b!397967))

(assert (= (and b!397969 ((_ is ValueCellFull!4629) mapDefault!16539)) b!397966))

(assert (= start!38534 b!397969))

(declare-fun m!392973 () Bool)

(assert (=> b!397962 m!392973))

(declare-fun m!392975 () Bool)

(assert (=> b!397958 m!392975))

(declare-fun m!392977 () Bool)

(assert (=> b!397960 m!392977))

(declare-fun m!392979 () Bool)

(assert (=> b!397970 m!392979))

(declare-fun m!392981 () Bool)

(assert (=> b!397970 m!392981))

(declare-fun m!392983 () Bool)

(assert (=> b!397965 m!392983))

(declare-fun m!392985 () Bool)

(assert (=> b!397964 m!392985))

(declare-fun m!392987 () Bool)

(assert (=> start!38534 m!392987))

(declare-fun m!392989 () Bool)

(assert (=> start!38534 m!392989))

(declare-fun m!392991 () Bool)

(assert (=> b!397968 m!392991))

(declare-fun m!392993 () Bool)

(assert (=> b!397961 m!392993))

(declare-fun m!392995 () Bool)

(assert (=> mapNonEmpty!16539 m!392995))

(check-sat (not mapNonEmpty!16539) (not b!397961) (not b!397962) tp_is_empty!9945 (not b!397958) (not b!397965) (not start!38534) (not b!397970) (not b!397960) (not b!397964))
(check-sat)
