; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33906 () Bool)

(assert start!33906)

(declare-fun b_free!7077 () Bool)

(declare-fun b_next!7077 () Bool)

(assert (=> start!33906 (= b_free!7077 (not b_next!7077))))

(declare-fun tp!24743 () Bool)

(declare-fun b_and!14281 () Bool)

(assert (=> start!33906 (= tp!24743 b_and!14281)))

(declare-fun b!337387 () Bool)

(declare-fun e!207038 () Bool)

(declare-fun tp_is_empty!7029 () Bool)

(assert (=> b!337387 (= e!207038 tp_is_empty!7029)))

(declare-fun mapNonEmpty!11949 () Bool)

(declare-fun mapRes!11949 () Bool)

(declare-fun tp!24744 () Bool)

(assert (=> mapNonEmpty!11949 (= mapRes!11949 (and tp!24744 e!207038))))

(declare-fun mapKey!11949 () (_ BitVec 32))

(declare-datatypes ((V!10349 0))(
  ( (V!10350 (val!3559 Int)) )
))
(declare-datatypes ((ValueCell!3171 0))(
  ( (ValueCellFull!3171 (v!5720 V!10349)) (EmptyCell!3171) )
))
(declare-datatypes ((array!17627 0))(
  ( (array!17628 (arr!8338 (Array (_ BitVec 32) ValueCell!3171)) (size!8690 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17627)

(declare-fun mapRest!11949 () (Array (_ BitVec 32) ValueCell!3171))

(declare-fun mapValue!11949 () ValueCell!3171)

(assert (=> mapNonEmpty!11949 (= (arr!8338 _values!1525) (store mapRest!11949 mapKey!11949 mapValue!11949))))

(declare-fun b!337388 () Bool)

(declare-fun res!186464 () Bool)

(declare-fun e!207039 () Bool)

(assert (=> b!337388 (=> (not res!186464) (not e!207039))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!337388 (= res!186464 (validKeyInArray!0 k0!1348))))

(declare-fun b!337389 () Bool)

(declare-fun e!207034 () Bool)

(assert (=> b!337389 (= e!207039 e!207034)))

(declare-fun res!186461 () Bool)

(assert (=> b!337389 (=> (not res!186461) (not e!207034))))

(declare-datatypes ((SeekEntryResult!3228 0))(
  ( (MissingZero!3228 (index!15091 (_ BitVec 32))) (Found!3228 (index!15092 (_ BitVec 32))) (Intermediate!3228 (undefined!4040 Bool) (index!15093 (_ BitVec 32)) (x!33643 (_ BitVec 32))) (Undefined!3228) (MissingVacant!3228 (index!15094 (_ BitVec 32))) )
))
(declare-fun lt!160422 () SeekEntryResult!3228)

(get-info :version)

(assert (=> b!337389 (= res!186461 (and (not ((_ is Found!3228) lt!160422)) ((_ is MissingZero!3228) lt!160422)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((array!17629 0))(
  ( (array!17630 (arr!8339 (Array (_ BitVec 32) (_ BitVec 64))) (size!8691 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17629)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17629 (_ BitVec 32)) SeekEntryResult!3228)

(assert (=> b!337389 (= lt!160422 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!11949 () Bool)

(assert (=> mapIsEmpty!11949 mapRes!11949))

(declare-fun b!337390 () Bool)

(declare-fun res!186467 () Bool)

(assert (=> b!337390 (=> (not res!186467) (not e!207039))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!337390 (= res!186467 (and (= (size!8690 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8691 _keys!1895) (size!8690 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!337391 () Bool)

(assert (=> b!337391 (= e!207034 false)))

(declare-fun lt!160421 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!17629 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!337391 (= lt!160421 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!337392 () Bool)

(declare-fun res!186466 () Bool)

(assert (=> b!337392 (=> (not res!186466) (not e!207039))))

(declare-datatypes ((List!4805 0))(
  ( (Nil!4802) (Cons!4801 (h!5657 (_ BitVec 64)) (t!9907 List!4805)) )
))
(declare-fun arrayNoDuplicates!0 (array!17629 (_ BitVec 32) List!4805) Bool)

(assert (=> b!337392 (= res!186466 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4802))))

(declare-fun b!337393 () Bool)

(declare-fun e!207035 () Bool)

(declare-fun e!207036 () Bool)

(assert (=> b!337393 (= e!207035 (and e!207036 mapRes!11949))))

(declare-fun condMapEmpty!11949 () Bool)

(declare-fun mapDefault!11949 () ValueCell!3171)

(assert (=> b!337393 (= condMapEmpty!11949 (= (arr!8338 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3171)) mapDefault!11949)))))

(declare-fun b!337394 () Bool)

(declare-fun res!186462 () Bool)

(assert (=> b!337394 (=> (not res!186462) (not e!207034))))

(declare-fun arrayContainsKey!0 (array!17629 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!337394 (= res!186462 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!337395 () Bool)

(assert (=> b!337395 (= e!207036 tp_is_empty!7029)))

(declare-fun res!186463 () Bool)

(assert (=> start!33906 (=> (not res!186463) (not e!207039))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33906 (= res!186463 (validMask!0 mask!2385))))

(assert (=> start!33906 e!207039))

(assert (=> start!33906 true))

(assert (=> start!33906 tp_is_empty!7029))

(assert (=> start!33906 tp!24743))

(declare-fun array_inv!6176 (array!17627) Bool)

(assert (=> start!33906 (and (array_inv!6176 _values!1525) e!207035)))

(declare-fun array_inv!6177 (array!17629) Bool)

(assert (=> start!33906 (array_inv!6177 _keys!1895)))

(declare-fun b!337396 () Bool)

(declare-fun res!186465 () Bool)

(assert (=> b!337396 (=> (not res!186465) (not e!207039))))

(declare-fun zeroValue!1467 () V!10349)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10349)

(declare-datatypes ((tuple2!5166 0))(
  ( (tuple2!5167 (_1!2593 (_ BitVec 64)) (_2!2593 V!10349)) )
))
(declare-datatypes ((List!4806 0))(
  ( (Nil!4803) (Cons!4802 (h!5658 tuple2!5166) (t!9908 List!4806)) )
))
(declare-datatypes ((ListLongMap!4093 0))(
  ( (ListLongMap!4094 (toList!2062 List!4806)) )
))
(declare-fun contains!2105 (ListLongMap!4093 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1582 (array!17629 array!17627 (_ BitVec 32) (_ BitVec 32) V!10349 V!10349 (_ BitVec 32) Int) ListLongMap!4093)

(assert (=> b!337396 (= res!186465 (not (contains!2105 (getCurrentListMap!1582 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!337397 () Bool)

(declare-fun res!186460 () Bool)

(assert (=> b!337397 (=> (not res!186460) (not e!207039))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17629 (_ BitVec 32)) Bool)

(assert (=> b!337397 (= res!186460 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(assert (= (and start!33906 res!186463) b!337390))

(assert (= (and b!337390 res!186467) b!337397))

(assert (= (and b!337397 res!186460) b!337392))

(assert (= (and b!337392 res!186466) b!337388))

(assert (= (and b!337388 res!186464) b!337396))

(assert (= (and b!337396 res!186465) b!337389))

(assert (= (and b!337389 res!186461) b!337394))

(assert (= (and b!337394 res!186462) b!337391))

(assert (= (and b!337393 condMapEmpty!11949) mapIsEmpty!11949))

(assert (= (and b!337393 (not condMapEmpty!11949)) mapNonEmpty!11949))

(assert (= (and mapNonEmpty!11949 ((_ is ValueCellFull!3171) mapValue!11949)) b!337387))

(assert (= (and b!337393 ((_ is ValueCellFull!3171) mapDefault!11949)) b!337395))

(assert (= start!33906 b!337393))

(declare-fun m!340915 () Bool)

(assert (=> b!337396 m!340915))

(assert (=> b!337396 m!340915))

(declare-fun m!340917 () Bool)

(assert (=> b!337396 m!340917))

(declare-fun m!340919 () Bool)

(assert (=> start!33906 m!340919))

(declare-fun m!340921 () Bool)

(assert (=> start!33906 m!340921))

(declare-fun m!340923 () Bool)

(assert (=> start!33906 m!340923))

(declare-fun m!340925 () Bool)

(assert (=> mapNonEmpty!11949 m!340925))

(declare-fun m!340927 () Bool)

(assert (=> b!337394 m!340927))

(declare-fun m!340929 () Bool)

(assert (=> b!337397 m!340929))

(declare-fun m!340931 () Bool)

(assert (=> b!337391 m!340931))

(declare-fun m!340933 () Bool)

(assert (=> b!337389 m!340933))

(declare-fun m!340935 () Bool)

(assert (=> b!337388 m!340935))

(declare-fun m!340937 () Bool)

(assert (=> b!337392 m!340937))

(check-sat (not b!337388) (not b!337392) (not b!337389) tp_is_empty!7029 (not start!33906) (not mapNonEmpty!11949) (not b!337391) b_and!14281 (not b!337396) (not b_next!7077) (not b!337394) (not b!337397))
(check-sat b_and!14281 (not b_next!7077))
