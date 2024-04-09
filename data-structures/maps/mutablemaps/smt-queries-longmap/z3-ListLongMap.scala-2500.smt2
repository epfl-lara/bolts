; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38828 () Bool)

(assert start!38828)

(declare-fun mapNonEmpty!16980 () Bool)

(declare-fun mapRes!16980 () Bool)

(declare-fun tp!33099 () Bool)

(declare-fun e!243549 () Bool)

(assert (=> mapNonEmpty!16980 (= mapRes!16980 (and tp!33099 e!243549))))

(declare-datatypes ((V!14757 0))(
  ( (V!14758 (val!5164 Int)) )
))
(declare-datatypes ((ValueCell!4776 0))(
  ( (ValueCellFull!4776 (v!7407 V!14757)) (EmptyCell!4776) )
))
(declare-datatypes ((array!24339 0))(
  ( (array!24340 (arr!11616 (Array (_ BitVec 32) ValueCell!4776)) (size!11968 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24339)

(declare-fun mapValue!16980 () ValueCell!4776)

(declare-fun mapRest!16980 () (Array (_ BitVec 32) ValueCell!4776))

(declare-fun mapKey!16980 () (_ BitVec 32))

(assert (=> mapNonEmpty!16980 (= (arr!11616 _values!549) (store mapRest!16980 mapKey!16980 mapValue!16980))))

(declare-fun b!404987 () Bool)

(declare-fun res!233768 () Bool)

(declare-fun e!243548 () Bool)

(assert (=> b!404987 (=> (not res!233768) (not e!243548))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!404987 (= res!233768 (validKeyInArray!0 k0!794))))

(declare-fun res!233763 () Bool)

(assert (=> start!38828 (=> (not res!233763) (not e!243548))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!24341 0))(
  ( (array!24342 (arr!11617 (Array (_ BitVec 32) (_ BitVec 64))) (size!11969 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24341)

(assert (=> start!38828 (= res!233763 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11969 _keys!709))))))

(assert (=> start!38828 e!243548))

(assert (=> start!38828 true))

(declare-fun e!243553 () Bool)

(declare-fun array_inv!8484 (array!24339) Bool)

(assert (=> start!38828 (and (array_inv!8484 _values!549) e!243553)))

(declare-fun array_inv!8485 (array!24341) Bool)

(assert (=> start!38828 (array_inv!8485 _keys!709)))

(declare-fun b!404988 () Bool)

(declare-fun res!233766 () Bool)

(assert (=> b!404988 (=> (not res!233766) (not e!243548))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!404988 (= res!233766 (validMask!0 mask!1025))))

(declare-fun b!404989 () Bool)

(declare-fun res!233771 () Bool)

(assert (=> b!404989 (=> (not res!233771) (not e!243548))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!404989 (= res!233771 (or (= (select (arr!11617 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11617 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!404990 () Bool)

(declare-fun e!243550 () Bool)

(declare-fun tp_is_empty!10239 () Bool)

(assert (=> b!404990 (= e!243550 tp_is_empty!10239)))

(declare-fun b!404991 () Bool)

(declare-fun res!233765 () Bool)

(assert (=> b!404991 (=> (not res!233765) (not e!243548))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!404991 (= res!233765 (and (= (size!11968 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11969 _keys!709) (size!11968 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!404992 () Bool)

(declare-fun res!233767 () Bool)

(assert (=> b!404992 (=> (not res!233767) (not e!243548))))

(declare-fun arrayContainsKey!0 (array!24341 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!404992 (= res!233767 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!404993 () Bool)

(declare-fun e!243552 () Bool)

(assert (=> b!404993 (= e!243548 e!243552)))

(declare-fun res!233772 () Bool)

(assert (=> b!404993 (=> (not res!233772) (not e!243552))))

(declare-fun lt!188258 () array!24341)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24341 (_ BitVec 32)) Bool)

(assert (=> b!404993 (= res!233772 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188258 mask!1025))))

(assert (=> b!404993 (= lt!188258 (array!24342 (store (arr!11617 _keys!709) i!563 k0!794) (size!11969 _keys!709)))))

(declare-fun b!404994 () Bool)

(declare-fun res!233764 () Bool)

(assert (=> b!404994 (=> (not res!233764) (not e!243548))))

(assert (=> b!404994 (= res!233764 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!404995 () Bool)

(assert (=> b!404995 (= e!243553 (and e!243550 mapRes!16980))))

(declare-fun condMapEmpty!16980 () Bool)

(declare-fun mapDefault!16980 () ValueCell!4776)

(assert (=> b!404995 (= condMapEmpty!16980 (= (arr!11616 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4776)) mapDefault!16980)))))

(declare-fun b!404996 () Bool)

(declare-fun res!233769 () Bool)

(assert (=> b!404996 (=> (not res!233769) (not e!243548))))

(declare-datatypes ((List!6735 0))(
  ( (Nil!6732) (Cons!6731 (h!7587 (_ BitVec 64)) (t!11917 List!6735)) )
))
(declare-fun arrayNoDuplicates!0 (array!24341 (_ BitVec 32) List!6735) Bool)

(assert (=> b!404996 (= res!233769 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6732))))

(declare-fun mapIsEmpty!16980 () Bool)

(assert (=> mapIsEmpty!16980 mapRes!16980))

(declare-fun b!404997 () Bool)

(assert (=> b!404997 (= e!243552 false)))

(declare-fun lt!188259 () Bool)

(assert (=> b!404997 (= lt!188259 (arrayNoDuplicates!0 lt!188258 #b00000000000000000000000000000000 Nil!6732))))

(declare-fun b!404998 () Bool)

(declare-fun res!233770 () Bool)

(assert (=> b!404998 (=> (not res!233770) (not e!243548))))

(assert (=> b!404998 (= res!233770 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11969 _keys!709))))))

(declare-fun b!404999 () Bool)

(assert (=> b!404999 (= e!243549 tp_is_empty!10239)))

(assert (= (and start!38828 res!233763) b!404988))

(assert (= (and b!404988 res!233766) b!404991))

(assert (= (and b!404991 res!233765) b!404994))

(assert (= (and b!404994 res!233764) b!404996))

(assert (= (and b!404996 res!233769) b!404998))

(assert (= (and b!404998 res!233770) b!404987))

(assert (= (and b!404987 res!233768) b!404989))

(assert (= (and b!404989 res!233771) b!404992))

(assert (= (and b!404992 res!233767) b!404993))

(assert (= (and b!404993 res!233772) b!404997))

(assert (= (and b!404995 condMapEmpty!16980) mapIsEmpty!16980))

(assert (= (and b!404995 (not condMapEmpty!16980)) mapNonEmpty!16980))

(get-info :version)

(assert (= (and mapNonEmpty!16980 ((_ is ValueCellFull!4776) mapValue!16980)) b!404999))

(assert (= (and b!404995 ((_ is ValueCellFull!4776) mapDefault!16980)) b!404990))

(assert (= start!38828 b!404995))

(declare-fun m!397581 () Bool)

(assert (=> b!404988 m!397581))

(declare-fun m!397583 () Bool)

(assert (=> b!404994 m!397583))

(declare-fun m!397585 () Bool)

(assert (=> b!404992 m!397585))

(declare-fun m!397587 () Bool)

(assert (=> b!404989 m!397587))

(declare-fun m!397589 () Bool)

(assert (=> start!38828 m!397589))

(declare-fun m!397591 () Bool)

(assert (=> start!38828 m!397591))

(declare-fun m!397593 () Bool)

(assert (=> b!404987 m!397593))

(declare-fun m!397595 () Bool)

(assert (=> b!404996 m!397595))

(declare-fun m!397597 () Bool)

(assert (=> b!404997 m!397597))

(declare-fun m!397599 () Bool)

(assert (=> b!404993 m!397599))

(declare-fun m!397601 () Bool)

(assert (=> b!404993 m!397601))

(declare-fun m!397603 () Bool)

(assert (=> mapNonEmpty!16980 m!397603))

(check-sat tp_is_empty!10239 (not start!38828) (not mapNonEmpty!16980) (not b!404988) (not b!404994) (not b!404987) (not b!404992) (not b!404996) (not b!404997) (not b!404993))
(check-sat)
