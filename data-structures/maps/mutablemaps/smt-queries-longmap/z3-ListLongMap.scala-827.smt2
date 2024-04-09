; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20072 () Bool)

(assert start!20072)

(declare-fun b!196387 () Bool)

(declare-fun res!92707 () Bool)

(declare-fun e!129352 () Bool)

(assert (=> b!196387 (=> (not res!92707) (not e!129352))))

(declare-datatypes ((array!8406 0))(
  ( (array!8407 (arr!3953 (Array (_ BitVec 32) (_ BitVec 64))) (size!4278 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8406)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!5747 0))(
  ( (V!5748 (val!2332 Int)) )
))
(declare-datatypes ((ValueCell!1944 0))(
  ( (ValueCellFull!1944 (v!4298 V!5747)) (EmptyCell!1944) )
))
(declare-datatypes ((array!8408 0))(
  ( (array!8409 (arr!3954 (Array (_ BitVec 32) ValueCell!1944)) (size!4279 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8408)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!196387 (= res!92707 (and (= (size!4279 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4278 _keys!825) (size!4279 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!7931 () Bool)

(declare-fun mapRes!7931 () Bool)

(declare-fun tp!17219 () Bool)

(declare-fun e!129355 () Bool)

(assert (=> mapNonEmpty!7931 (= mapRes!7931 (and tp!17219 e!129355))))

(declare-fun mapValue!7931 () ValueCell!1944)

(declare-fun mapKey!7931 () (_ BitVec 32))

(declare-fun mapRest!7931 () (Array (_ BitVec 32) ValueCell!1944))

(assert (=> mapNonEmpty!7931 (= (arr!3954 _values!649) (store mapRest!7931 mapKey!7931 mapValue!7931))))

(declare-fun res!92706 () Bool)

(assert (=> start!20072 (=> (not res!92706) (not e!129352))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20072 (= res!92706 (validMask!0 mask!1149))))

(assert (=> start!20072 e!129352))

(assert (=> start!20072 true))

(declare-fun e!129351 () Bool)

(declare-fun array_inv!2563 (array!8408) Bool)

(assert (=> start!20072 (and (array_inv!2563 _values!649) e!129351)))

(declare-fun array_inv!2564 (array!8406) Bool)

(assert (=> start!20072 (array_inv!2564 _keys!825)))

(declare-fun b!196388 () Bool)

(declare-fun res!92705 () Bool)

(assert (=> b!196388 (=> (not res!92705) (not e!129352))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8406 (_ BitVec 32)) Bool)

(assert (=> b!196388 (= res!92705 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!196389 () Bool)

(declare-fun tp_is_empty!4575 () Bool)

(assert (=> b!196389 (= e!129355 tp_is_empty!4575)))

(declare-fun b!196390 () Bool)

(assert (=> b!196390 (= e!129352 false)))

(declare-fun lt!97639 () Bool)

(declare-datatypes ((List!2492 0))(
  ( (Nil!2489) (Cons!2488 (h!3130 (_ BitVec 64)) (t!7431 List!2492)) )
))
(declare-fun arrayNoDuplicates!0 (array!8406 (_ BitVec 32) List!2492) Bool)

(assert (=> b!196390 (= lt!97639 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2489))))

(declare-fun mapIsEmpty!7931 () Bool)

(assert (=> mapIsEmpty!7931 mapRes!7931))

(declare-fun b!196391 () Bool)

(declare-fun e!129354 () Bool)

(assert (=> b!196391 (= e!129351 (and e!129354 mapRes!7931))))

(declare-fun condMapEmpty!7931 () Bool)

(declare-fun mapDefault!7931 () ValueCell!1944)

(assert (=> b!196391 (= condMapEmpty!7931 (= (arr!3954 _values!649) ((as const (Array (_ BitVec 32) ValueCell!1944)) mapDefault!7931)))))

(declare-fun b!196392 () Bool)

(assert (=> b!196392 (= e!129354 tp_is_empty!4575)))

(assert (= (and start!20072 res!92706) b!196387))

(assert (= (and b!196387 res!92707) b!196388))

(assert (= (and b!196388 res!92705) b!196390))

(assert (= (and b!196391 condMapEmpty!7931) mapIsEmpty!7931))

(assert (= (and b!196391 (not condMapEmpty!7931)) mapNonEmpty!7931))

(get-info :version)

(assert (= (and mapNonEmpty!7931 ((_ is ValueCellFull!1944) mapValue!7931)) b!196389))

(assert (= (and b!196391 ((_ is ValueCellFull!1944) mapDefault!7931)) b!196392))

(assert (= start!20072 b!196391))

(declare-fun m!223689 () Bool)

(assert (=> mapNonEmpty!7931 m!223689))

(declare-fun m!223691 () Bool)

(assert (=> start!20072 m!223691))

(declare-fun m!223693 () Bool)

(assert (=> start!20072 m!223693))

(declare-fun m!223695 () Bool)

(assert (=> start!20072 m!223695))

(declare-fun m!223697 () Bool)

(assert (=> b!196388 m!223697))

(declare-fun m!223699 () Bool)

(assert (=> b!196390 m!223699))

(check-sat (not b!196390) (not mapNonEmpty!7931) (not b!196388) tp_is_empty!4575 (not start!20072))
(check-sat)
