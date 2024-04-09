; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39122 () Bool)

(assert start!39122)

(declare-fun b_free!9381 () Bool)

(declare-fun b_next!9381 () Bool)

(assert (=> start!39122 (= b_free!9381 (not b_next!9381))))

(declare-fun tp!33672 () Bool)

(declare-fun b_and!16785 () Bool)

(assert (=> start!39122 (= tp!33672 b_and!16785)))

(declare-fun res!238442 () Bool)

(declare-fun e!246195 () Bool)

(assert (=> start!39122 (=> (not res!238442) (not e!246195))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!24913 0))(
  ( (array!24914 (arr!11903 (Array (_ BitVec 32) (_ BitVec 64))) (size!12255 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24913)

(assert (=> start!39122 (= res!238442 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12255 _keys!709))))))

(assert (=> start!39122 e!246195))

(declare-fun tp_is_empty!10533 () Bool)

(assert (=> start!39122 tp_is_empty!10533))

(assert (=> start!39122 tp!33672))

(assert (=> start!39122 true))

(declare-datatypes ((V!15149 0))(
  ( (V!15150 (val!5311 Int)) )
))
(declare-datatypes ((ValueCell!4923 0))(
  ( (ValueCellFull!4923 (v!7554 V!15149)) (EmptyCell!4923) )
))
(declare-datatypes ((array!24915 0))(
  ( (array!24916 (arr!11904 (Array (_ BitVec 32) ValueCell!4923)) (size!12256 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24915)

(declare-fun e!246198 () Bool)

(declare-fun array_inv!8686 (array!24915) Bool)

(assert (=> start!39122 (and (array_inv!8686 _values!549) e!246198)))

(declare-fun array_inv!8687 (array!24913) Bool)

(assert (=> start!39122 (array_inv!8687 _keys!709)))

(declare-fun b!410982 () Bool)

(declare-fun res!238443 () Bool)

(assert (=> b!410982 (=> (not res!238443) (not e!246195))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!410982 (= res!238443 (and (= (size!12256 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12255 _keys!709) (size!12256 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!410983 () Bool)

(declare-fun e!246196 () Bool)

(assert (=> b!410983 (= e!246196 false)))

(declare-fun minValue!515 () V!15149)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((tuple2!6824 0))(
  ( (tuple2!6825 (_1!3422 (_ BitVec 64)) (_2!3422 V!15149)) )
))
(declare-datatypes ((List!6878 0))(
  ( (Nil!6875) (Cons!6874 (h!7730 tuple2!6824) (t!12060 List!6878)) )
))
(declare-datatypes ((ListLongMap!5751 0))(
  ( (ListLongMap!5752 (toList!2891 List!6878)) )
))
(declare-fun lt!189192 () ListLongMap!5751)

(declare-fun zeroValue!515 () V!15149)

(declare-fun lt!189190 () array!24913)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun v!412 () V!15149)

(declare-fun getCurrentListMapNoExtraKeys!1101 (array!24913 array!24915 (_ BitVec 32) (_ BitVec 32) V!15149 V!15149 (_ BitVec 32) Int) ListLongMap!5751)

(assert (=> b!410983 (= lt!189192 (getCurrentListMapNoExtraKeys!1101 lt!189190 (array!24916 (store (arr!11904 _values!549) i!563 (ValueCellFull!4923 v!412)) (size!12256 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!189191 () ListLongMap!5751)

(assert (=> b!410983 (= lt!189191 (getCurrentListMapNoExtraKeys!1101 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!410984 () Bool)

(declare-fun res!238440 () Bool)

(assert (=> b!410984 (=> (not res!238440) (not e!246195))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24913 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!410984 (= res!238440 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!410985 () Bool)

(declare-fun res!238437 () Bool)

(assert (=> b!410985 (=> (not res!238437) (not e!246195))))

(declare-datatypes ((List!6879 0))(
  ( (Nil!6876) (Cons!6875 (h!7731 (_ BitVec 64)) (t!12061 List!6879)) )
))
(declare-fun arrayNoDuplicates!0 (array!24913 (_ BitVec 32) List!6879) Bool)

(assert (=> b!410985 (= res!238437 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6876))))

(declare-fun b!410986 () Bool)

(declare-fun e!246197 () Bool)

(declare-fun mapRes!17421 () Bool)

(assert (=> b!410986 (= e!246198 (and e!246197 mapRes!17421))))

(declare-fun condMapEmpty!17421 () Bool)

(declare-fun mapDefault!17421 () ValueCell!4923)

(assert (=> b!410986 (= condMapEmpty!17421 (= (arr!11904 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4923)) mapDefault!17421)))))

(declare-fun b!410987 () Bool)

(assert (=> b!410987 (= e!246195 e!246196)))

(declare-fun res!238446 () Bool)

(assert (=> b!410987 (=> (not res!238446) (not e!246196))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24913 (_ BitVec 32)) Bool)

(assert (=> b!410987 (= res!238446 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189190 mask!1025))))

(assert (=> b!410987 (= lt!189190 (array!24914 (store (arr!11903 _keys!709) i!563 k0!794) (size!12255 _keys!709)))))

(declare-fun mapNonEmpty!17421 () Bool)

(declare-fun tp!33671 () Bool)

(declare-fun e!246194 () Bool)

(assert (=> mapNonEmpty!17421 (= mapRes!17421 (and tp!33671 e!246194))))

(declare-fun mapKey!17421 () (_ BitVec 32))

(declare-fun mapRest!17421 () (Array (_ BitVec 32) ValueCell!4923))

(declare-fun mapValue!17421 () ValueCell!4923)

(assert (=> mapNonEmpty!17421 (= (arr!11904 _values!549) (store mapRest!17421 mapKey!17421 mapValue!17421))))

(declare-fun b!410988 () Bool)

(declare-fun res!238441 () Bool)

(assert (=> b!410988 (=> (not res!238441) (not e!246196))))

(assert (=> b!410988 (= res!238441 (arrayNoDuplicates!0 lt!189190 #b00000000000000000000000000000000 Nil!6876))))

(declare-fun b!410989 () Bool)

(assert (=> b!410989 (= e!246194 tp_is_empty!10533)))

(declare-fun b!410990 () Bool)

(declare-fun res!238439 () Bool)

(assert (=> b!410990 (=> (not res!238439) (not e!246195))))

(assert (=> b!410990 (= res!238439 (or (= (select (arr!11903 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11903 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!410991 () Bool)

(declare-fun res!238445 () Bool)

(assert (=> b!410991 (=> (not res!238445) (not e!246195))))

(assert (=> b!410991 (= res!238445 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!410992 () Bool)

(declare-fun res!238444 () Bool)

(assert (=> b!410992 (=> (not res!238444) (not e!246195))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!410992 (= res!238444 (validKeyInArray!0 k0!794))))

(declare-fun b!410993 () Bool)

(declare-fun res!238436 () Bool)

(assert (=> b!410993 (=> (not res!238436) (not e!246195))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!410993 (= res!238436 (validMask!0 mask!1025))))

(declare-fun b!410994 () Bool)

(declare-fun res!238435 () Bool)

(assert (=> b!410994 (=> (not res!238435) (not e!246195))))

(assert (=> b!410994 (= res!238435 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12255 _keys!709))))))

(declare-fun mapIsEmpty!17421 () Bool)

(assert (=> mapIsEmpty!17421 mapRes!17421))

(declare-fun b!410995 () Bool)

(declare-fun res!238438 () Bool)

(assert (=> b!410995 (=> (not res!238438) (not e!246196))))

(assert (=> b!410995 (= res!238438 (bvsle from!863 i!563))))

(declare-fun b!410996 () Bool)

(assert (=> b!410996 (= e!246197 tp_is_empty!10533)))

(assert (= (and start!39122 res!238442) b!410993))

(assert (= (and b!410993 res!238436) b!410982))

(assert (= (and b!410982 res!238443) b!410991))

(assert (= (and b!410991 res!238445) b!410985))

(assert (= (and b!410985 res!238437) b!410994))

(assert (= (and b!410994 res!238435) b!410992))

(assert (= (and b!410992 res!238444) b!410990))

(assert (= (and b!410990 res!238439) b!410984))

(assert (= (and b!410984 res!238440) b!410987))

(assert (= (and b!410987 res!238446) b!410988))

(assert (= (and b!410988 res!238441) b!410995))

(assert (= (and b!410995 res!238438) b!410983))

(assert (= (and b!410986 condMapEmpty!17421) mapIsEmpty!17421))

(assert (= (and b!410986 (not condMapEmpty!17421)) mapNonEmpty!17421))

(get-info :version)

(assert (= (and mapNonEmpty!17421 ((_ is ValueCellFull!4923) mapValue!17421)) b!410989))

(assert (= (and b!410986 ((_ is ValueCellFull!4923) mapDefault!17421)) b!410996))

(assert (= start!39122 b!410986))

(declare-fun m!401259 () Bool)

(assert (=> b!410992 m!401259))

(declare-fun m!401261 () Bool)

(assert (=> b!410987 m!401261))

(declare-fun m!401263 () Bool)

(assert (=> b!410987 m!401263))

(declare-fun m!401265 () Bool)

(assert (=> start!39122 m!401265))

(declare-fun m!401267 () Bool)

(assert (=> start!39122 m!401267))

(declare-fun m!401269 () Bool)

(assert (=> b!410985 m!401269))

(declare-fun m!401271 () Bool)

(assert (=> b!410984 m!401271))

(declare-fun m!401273 () Bool)

(assert (=> b!410983 m!401273))

(declare-fun m!401275 () Bool)

(assert (=> b!410983 m!401275))

(declare-fun m!401277 () Bool)

(assert (=> b!410983 m!401277))

(declare-fun m!401279 () Bool)

(assert (=> b!410988 m!401279))

(declare-fun m!401281 () Bool)

(assert (=> b!410993 m!401281))

(declare-fun m!401283 () Bool)

(assert (=> mapNonEmpty!17421 m!401283))

(declare-fun m!401285 () Bool)

(assert (=> b!410990 m!401285))

(declare-fun m!401287 () Bool)

(assert (=> b!410991 m!401287))

(check-sat (not b!410988) (not mapNonEmpty!17421) (not b!410984) (not b!410992) (not b!410991) tp_is_empty!10533 (not b_next!9381) (not b!410987) (not b!410993) (not start!39122) b_and!16785 (not b!410985) (not b!410983))
(check-sat b_and!16785 (not b_next!9381))
