; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38486 () Bool)

(assert start!38486)

(declare-fun mapIsEmpty!16467 () Bool)

(declare-fun mapRes!16467 () Bool)

(assert (=> mapIsEmpty!16467 mapRes!16467))

(declare-fun b!397022 () Bool)

(declare-fun e!240146 () Bool)

(declare-fun tp_is_empty!9897 () Bool)

(assert (=> b!397022 (= e!240146 tp_is_empty!9897)))

(declare-fun mapNonEmpty!16467 () Bool)

(declare-fun tp!32262 () Bool)

(assert (=> mapNonEmpty!16467 (= mapRes!16467 (and tp!32262 e!240146))))

(declare-datatypes ((V!14301 0))(
  ( (V!14302 (val!4993 Int)) )
))
(declare-datatypes ((ValueCell!4605 0))(
  ( (ValueCellFull!4605 (v!7236 V!14301)) (EmptyCell!4605) )
))
(declare-fun mapRest!16467 () (Array (_ BitVec 32) ValueCell!4605))

(declare-fun mapValue!16467 () ValueCell!4605)

(declare-datatypes ((array!23677 0))(
  ( (array!23678 (arr!11285 (Array (_ BitVec 32) ValueCell!4605)) (size!11637 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23677)

(declare-fun mapKey!16467 () (_ BitVec 32))

(assert (=> mapNonEmpty!16467 (= (arr!11285 _values!549) (store mapRest!16467 mapKey!16467 mapValue!16467))))

(declare-fun b!397023 () Bool)

(declare-fun res!227992 () Bool)

(declare-fun e!240147 () Bool)

(assert (=> b!397023 (=> (not res!227992) (not e!240147))))

(declare-datatypes ((array!23679 0))(
  ( (array!23680 (arr!11286 (Array (_ BitVec 32) (_ BitVec 64))) (size!11638 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23679)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!397023 (= res!227992 (or (= (select (arr!11286 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11286 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!397024 () Bool)

(declare-fun res!227990 () Bool)

(assert (=> b!397024 (=> (not res!227990) (not e!240147))))

(declare-datatypes ((List!6506 0))(
  ( (Nil!6503) (Cons!6502 (h!7358 (_ BitVec 64)) (t!11688 List!6506)) )
))
(declare-fun arrayNoDuplicates!0 (array!23679 (_ BitVec 32) List!6506) Bool)

(assert (=> b!397024 (= res!227990 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6503))))

(declare-fun b!397025 () Bool)

(declare-fun res!227993 () Bool)

(assert (=> b!397025 (=> (not res!227993) (not e!240147))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!397025 (= res!227993 (validKeyInArray!0 k0!794))))

(declare-fun b!397026 () Bool)

(declare-fun e!240148 () Bool)

(assert (=> b!397026 (= e!240148 false)))

(declare-fun lt!187233 () Bool)

(declare-fun lt!187232 () array!23679)

(assert (=> b!397026 (= lt!187233 (arrayNoDuplicates!0 lt!187232 #b00000000000000000000000000000000 Nil!6503))))

(declare-fun b!397027 () Bool)

(declare-fun e!240150 () Bool)

(assert (=> b!397027 (= e!240150 tp_is_empty!9897)))

(declare-fun b!397028 () Bool)

(declare-fun res!227991 () Bool)

(assert (=> b!397028 (=> (not res!227991) (not e!240147))))

(declare-fun arrayContainsKey!0 (array!23679 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!397028 (= res!227991 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!397029 () Bool)

(assert (=> b!397029 (= e!240147 e!240148)))

(declare-fun res!227986 () Bool)

(assert (=> b!397029 (=> (not res!227986) (not e!240148))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23679 (_ BitVec 32)) Bool)

(assert (=> b!397029 (= res!227986 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187232 mask!1025))))

(assert (=> b!397029 (= lt!187232 (array!23680 (store (arr!11286 _keys!709) i!563 k0!794) (size!11638 _keys!709)))))

(declare-fun b!397030 () Bool)

(declare-fun res!227989 () Bool)

(assert (=> b!397030 (=> (not res!227989) (not e!240147))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!397030 (= res!227989 (validMask!0 mask!1025))))

(declare-fun res!227988 () Bool)

(assert (=> start!38486 (=> (not res!227988) (not e!240147))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38486 (= res!227988 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11638 _keys!709))))))

(assert (=> start!38486 e!240147))

(assert (=> start!38486 true))

(declare-fun e!240151 () Bool)

(declare-fun array_inv!8260 (array!23677) Bool)

(assert (=> start!38486 (and (array_inv!8260 _values!549) e!240151)))

(declare-fun array_inv!8261 (array!23679) Bool)

(assert (=> start!38486 (array_inv!8261 _keys!709)))

(declare-fun b!397031 () Bool)

(assert (=> b!397031 (= e!240151 (and e!240150 mapRes!16467))))

(declare-fun condMapEmpty!16467 () Bool)

(declare-fun mapDefault!16467 () ValueCell!4605)

(assert (=> b!397031 (= condMapEmpty!16467 (= (arr!11285 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4605)) mapDefault!16467)))))

(declare-fun b!397032 () Bool)

(declare-fun res!227985 () Bool)

(assert (=> b!397032 (=> (not res!227985) (not e!240147))))

(assert (=> b!397032 (= res!227985 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11638 _keys!709))))))

(declare-fun b!397033 () Bool)

(declare-fun res!227994 () Bool)

(assert (=> b!397033 (=> (not res!227994) (not e!240147))))

(assert (=> b!397033 (= res!227994 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!397034 () Bool)

(declare-fun res!227987 () Bool)

(assert (=> b!397034 (=> (not res!227987) (not e!240147))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!397034 (= res!227987 (and (= (size!11637 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11638 _keys!709) (size!11637 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(assert (= (and start!38486 res!227988) b!397030))

(assert (= (and b!397030 res!227989) b!397034))

(assert (= (and b!397034 res!227987) b!397033))

(assert (= (and b!397033 res!227994) b!397024))

(assert (= (and b!397024 res!227990) b!397032))

(assert (= (and b!397032 res!227985) b!397025))

(assert (= (and b!397025 res!227993) b!397023))

(assert (= (and b!397023 res!227992) b!397028))

(assert (= (and b!397028 res!227991) b!397029))

(assert (= (and b!397029 res!227986) b!397026))

(assert (= (and b!397031 condMapEmpty!16467) mapIsEmpty!16467))

(assert (= (and b!397031 (not condMapEmpty!16467)) mapNonEmpty!16467))

(get-info :version)

(assert (= (and mapNonEmpty!16467 ((_ is ValueCellFull!4605) mapValue!16467)) b!397022))

(assert (= (and b!397031 ((_ is ValueCellFull!4605) mapDefault!16467)) b!397027))

(assert (= start!38486 b!397031))

(declare-fun m!392397 () Bool)

(assert (=> mapNonEmpty!16467 m!392397))

(declare-fun m!392399 () Bool)

(assert (=> b!397024 m!392399))

(declare-fun m!392401 () Bool)

(assert (=> b!397033 m!392401))

(declare-fun m!392403 () Bool)

(assert (=> b!397029 m!392403))

(declare-fun m!392405 () Bool)

(assert (=> b!397029 m!392405))

(declare-fun m!392407 () Bool)

(assert (=> b!397028 m!392407))

(declare-fun m!392409 () Bool)

(assert (=> start!38486 m!392409))

(declare-fun m!392411 () Bool)

(assert (=> start!38486 m!392411))

(declare-fun m!392413 () Bool)

(assert (=> b!397030 m!392413))

(declare-fun m!392415 () Bool)

(assert (=> b!397023 m!392415))

(declare-fun m!392417 () Bool)

(assert (=> b!397026 m!392417))

(declare-fun m!392419 () Bool)

(assert (=> b!397025 m!392419))

(check-sat (not b!397025) (not b!397026) (not b!397029) (not b!397028) tp_is_empty!9897 (not b!397024) (not mapNonEmpty!16467) (not start!38486) (not b!397033) (not b!397030))
(check-sat)
