; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41196 () Bool)

(assert start!41196)

(declare-fun b_free!11057 () Bool)

(declare-fun b_next!11057 () Bool)

(assert (=> start!41196 (= b_free!11057 (not b_next!11057))))

(declare-fun tp!39007 () Bool)

(declare-fun b_and!19371 () Bool)

(assert (=> start!41196 (= tp!39007 b_and!19371)))

(declare-fun b!460362 () Bool)

(declare-fun res!275335 () Bool)

(declare-fun e!268580 () Bool)

(assert (=> b!460362 (=> (not res!275335) (not e!268580))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!28551 0))(
  ( (array!28552 (arr!13713 (Array (_ BitVec 32) (_ BitVec 64))) (size!14065 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28551)

(assert (=> b!460362 (= res!275335 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!14065 _keys!709))))))

(declare-fun b!460363 () Bool)

(declare-fun e!268575 () Bool)

(declare-fun tp_is_empty!12395 () Bool)

(assert (=> b!460363 (= e!268575 tp_is_empty!12395)))

(declare-fun b!460364 () Bool)

(declare-fun res!275340 () Bool)

(assert (=> b!460364 (=> (not res!275340) (not e!268580))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28551 (_ BitVec 32)) Bool)

(assert (=> b!460364 (= res!275340 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapNonEmpty!20242 () Bool)

(declare-fun mapRes!20242 () Bool)

(declare-fun tp!39006 () Bool)

(assert (=> mapNonEmpty!20242 (= mapRes!20242 (and tp!39006 e!268575))))

(declare-datatypes ((V!17631 0))(
  ( (V!17632 (val!6242 Int)) )
))
(declare-datatypes ((ValueCell!5854 0))(
  ( (ValueCellFull!5854 (v!8516 V!17631)) (EmptyCell!5854) )
))
(declare-datatypes ((array!28553 0))(
  ( (array!28554 (arr!13714 (Array (_ BitVec 32) ValueCell!5854)) (size!14066 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28553)

(declare-fun mapKey!20242 () (_ BitVec 32))

(declare-fun mapRest!20242 () (Array (_ BitVec 32) ValueCell!5854))

(declare-fun mapValue!20242 () ValueCell!5854)

(assert (=> mapNonEmpty!20242 (= (arr!13714 _values!549) (store mapRest!20242 mapKey!20242 mapValue!20242))))

(declare-fun b!460365 () Bool)

(declare-fun e!268582 () Bool)

(assert (=> b!460365 (= e!268582 true)))

(declare-datatypes ((tuple2!8200 0))(
  ( (tuple2!8201 (_1!4110 (_ BitVec 64)) (_2!4110 V!17631)) )
))
(declare-fun lt!208556 () tuple2!8200)

(declare-datatypes ((List!8302 0))(
  ( (Nil!8299) (Cons!8298 (h!9154 tuple2!8200) (t!14246 List!8302)) )
))
(declare-datatypes ((ListLongMap!7127 0))(
  ( (ListLongMap!7128 (toList!3579 List!8302)) )
))
(declare-fun lt!208555 () ListLongMap!7127)

(declare-fun lt!208558 () tuple2!8200)

(declare-fun lt!208549 () ListLongMap!7127)

(declare-fun +!1598 (ListLongMap!7127 tuple2!8200) ListLongMap!7127)

(assert (=> b!460365 (= lt!208549 (+!1598 (+!1598 lt!208555 lt!208558) lt!208556))))

(declare-fun lt!208562 () V!17631)

(declare-datatypes ((Unit!13354 0))(
  ( (Unit!13355) )
))
(declare-fun lt!208559 () Unit!13354)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun v!412 () V!17631)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun addCommutativeForDiffKeys!423 (ListLongMap!7127 (_ BitVec 64) V!17631 (_ BitVec 64) V!17631) Unit!13354)

(assert (=> b!460365 (= lt!208559 (addCommutativeForDiffKeys!423 lt!208555 k!794 v!412 (select (arr!13713 _keys!709) from!863) lt!208562))))

(declare-fun b!460366 () Bool)

(declare-fun e!268576 () Bool)

(assert (=> b!460366 (= e!268576 e!268582)))

(declare-fun res!275331 () Bool)

(assert (=> b!460366 (=> res!275331 e!268582)))

(assert (=> b!460366 (= res!275331 (= k!794 (select (arr!13713 _keys!709) from!863)))))

(assert (=> b!460366 (not (= (select (arr!13713 _keys!709) from!863) k!794))))

(declare-fun lt!208554 () Unit!13354)

(declare-fun e!268573 () Unit!13354)

(assert (=> b!460366 (= lt!208554 e!268573)))

(declare-fun c!56459 () Bool)

(assert (=> b!460366 (= c!56459 (= (select (arr!13713 _keys!709) from!863) k!794))))

(declare-fun lt!208550 () ListLongMap!7127)

(assert (=> b!460366 (= lt!208550 lt!208549)))

(declare-fun lt!208561 () ListLongMap!7127)

(assert (=> b!460366 (= lt!208549 (+!1598 lt!208561 lt!208558))))

(assert (=> b!460366 (= lt!208558 (tuple2!8201 (select (arr!13713 _keys!709) from!863) lt!208562))))

(declare-fun defaultEntry!557 () Int)

(declare-fun get!6784 (ValueCell!5854 V!17631) V!17631)

(declare-fun dynLambda!906 (Int (_ BitVec 64)) V!17631)

(assert (=> b!460366 (= lt!208562 (get!6784 (select (arr!13714 _values!549) from!863) (dynLambda!906 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!460367 () Bool)

(declare-fun res!275329 () Bool)

(assert (=> b!460367 (=> (not res!275329) (not e!268580))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!460367 (= res!275329 (validMask!0 mask!1025))))

(declare-fun b!460368 () Bool)

(declare-fun res!275338 () Bool)

(assert (=> b!460368 (=> (not res!275338) (not e!268580))))

(declare-datatypes ((List!8303 0))(
  ( (Nil!8300) (Cons!8299 (h!9155 (_ BitVec 64)) (t!14247 List!8303)) )
))
(declare-fun arrayNoDuplicates!0 (array!28551 (_ BitVec 32) List!8303) Bool)

(assert (=> b!460368 (= res!275338 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8300))))

(declare-fun res!275328 () Bool)

(assert (=> start!41196 (=> (not res!275328) (not e!268580))))

(assert (=> start!41196 (= res!275328 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!14065 _keys!709))))))

(assert (=> start!41196 e!268580))

(assert (=> start!41196 tp_is_empty!12395))

(assert (=> start!41196 tp!39007))

(assert (=> start!41196 true))

(declare-fun e!268577 () Bool)

(declare-fun array_inv!9912 (array!28553) Bool)

(assert (=> start!41196 (and (array_inv!9912 _values!549) e!268577)))

(declare-fun array_inv!9913 (array!28551) Bool)

(assert (=> start!41196 (array_inv!9913 _keys!709)))

(declare-fun b!460369 () Bool)

(declare-fun e!268579 () Bool)

(assert (=> b!460369 (= e!268580 e!268579)))

(declare-fun res!275339 () Bool)

(assert (=> b!460369 (=> (not res!275339) (not e!268579))))

(declare-fun lt!208563 () array!28551)

(assert (=> b!460369 (= res!275339 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!208563 mask!1025))))

(assert (=> b!460369 (= lt!208563 (array!28552 (store (arr!13713 _keys!709) i!563 k!794) (size!14065 _keys!709)))))

(declare-fun mapIsEmpty!20242 () Bool)

(assert (=> mapIsEmpty!20242 mapRes!20242))

(declare-fun b!460370 () Bool)

(declare-fun res!275334 () Bool)

(assert (=> b!460370 (=> (not res!275334) (not e!268580))))

(declare-fun arrayContainsKey!0 (array!28551 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!460370 (= res!275334 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!460371 () Bool)

(declare-fun res!275327 () Bool)

(assert (=> b!460371 (=> (not res!275327) (not e!268579))))

(assert (=> b!460371 (= res!275327 (arrayNoDuplicates!0 lt!208563 #b00000000000000000000000000000000 Nil!8300))))

(declare-fun b!460372 () Bool)

(declare-fun e!268581 () Bool)

(assert (=> b!460372 (= e!268581 tp_is_empty!12395)))

(declare-fun b!460373 () Bool)

(declare-fun res!275337 () Bool)

(assert (=> b!460373 (=> (not res!275337) (not e!268579))))

(assert (=> b!460373 (= res!275337 (bvsle from!863 i!563))))

(declare-fun b!460374 () Bool)

(assert (=> b!460374 (= e!268577 (and e!268581 mapRes!20242))))

(declare-fun condMapEmpty!20242 () Bool)

(declare-fun mapDefault!20242 () ValueCell!5854)

