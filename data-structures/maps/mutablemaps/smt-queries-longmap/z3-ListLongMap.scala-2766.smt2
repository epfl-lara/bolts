; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40458 () Bool)

(assert start!40458)

(declare-fun b!444926 () Bool)

(declare-fun res!264020 () Bool)

(declare-fun e!261583 () Bool)

(assert (=> b!444926 (=> (not res!264020) (not e!261583))))

(declare-datatypes ((array!27439 0))(
  ( (array!27440 (arr!13164 (Array (_ BitVec 32) (_ BitVec 64))) (size!13516 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27439)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16885 0))(
  ( (V!16886 (val!5962 Int)) )
))
(declare-datatypes ((ValueCell!5574 0))(
  ( (ValueCellFull!5574 (v!8209 V!16885)) (EmptyCell!5574) )
))
(declare-datatypes ((array!27441 0))(
  ( (array!27442 (arr!13165 (Array (_ BitVec 32) ValueCell!5574)) (size!13517 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27441)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!444926 (= res!264020 (and (= (size!13517 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13516 _keys!709) (size!13517 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!444927 () Bool)

(declare-fun res!264021 () Bool)

(assert (=> b!444927 (=> (not res!264021) (not e!261583))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!444927 (= res!264021 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13516 _keys!709))))))

(declare-fun b!444928 () Bool)

(declare-fun e!261580 () Bool)

(assert (=> b!444928 (= e!261583 e!261580)))

(declare-fun res!264025 () Bool)

(assert (=> b!444928 (=> (not res!264025) (not e!261580))))

(declare-fun lt!203558 () array!27439)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27439 (_ BitVec 32)) Bool)

(assert (=> b!444928 (= res!264025 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203558 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!444928 (= lt!203558 (array!27440 (store (arr!13164 _keys!709) i!563 k0!794) (size!13516 _keys!709)))))

(declare-fun b!444929 () Bool)

(declare-fun res!264024 () Bool)

(assert (=> b!444929 (=> (not res!264024) (not e!261583))))

(assert (=> b!444929 (= res!264024 (or (= (select (arr!13164 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13164 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!19380 () Bool)

(declare-fun mapRes!19380 () Bool)

(declare-fun tp!37362 () Bool)

(declare-fun e!261582 () Bool)

(assert (=> mapNonEmpty!19380 (= mapRes!19380 (and tp!37362 e!261582))))

(declare-fun mapRest!19380 () (Array (_ BitVec 32) ValueCell!5574))

(declare-fun mapValue!19380 () ValueCell!5574)

(declare-fun mapKey!19380 () (_ BitVec 32))

(assert (=> mapNonEmpty!19380 (= (arr!13165 _values!549) (store mapRest!19380 mapKey!19380 mapValue!19380))))

(declare-fun b!444930 () Bool)

(declare-fun res!264022 () Bool)

(assert (=> b!444930 (=> (not res!264022) (not e!261583))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!444930 (= res!264022 (validMask!0 mask!1025))))

(declare-fun res!264023 () Bool)

(assert (=> start!40458 (=> (not res!264023) (not e!261583))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40458 (= res!264023 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13516 _keys!709))))))

(assert (=> start!40458 e!261583))

(assert (=> start!40458 true))

(declare-fun e!261581 () Bool)

(declare-fun array_inv!9534 (array!27441) Bool)

(assert (=> start!40458 (and (array_inv!9534 _values!549) e!261581)))

(declare-fun array_inv!9535 (array!27439) Bool)

(assert (=> start!40458 (array_inv!9535 _keys!709)))

(declare-fun b!444931 () Bool)

(declare-fun e!261584 () Bool)

(declare-fun tp_is_empty!11835 () Bool)

(assert (=> b!444931 (= e!261584 tp_is_empty!11835)))

(declare-fun b!444932 () Bool)

(assert (=> b!444932 (= e!261580 false)))

(declare-fun lt!203559 () Bool)

(declare-datatypes ((List!7856 0))(
  ( (Nil!7853) (Cons!7852 (h!8708 (_ BitVec 64)) (t!13622 List!7856)) )
))
(declare-fun arrayNoDuplicates!0 (array!27439 (_ BitVec 32) List!7856) Bool)

(assert (=> b!444932 (= lt!203559 (arrayNoDuplicates!0 lt!203558 #b00000000000000000000000000000000 Nil!7853))))

(declare-fun b!444933 () Bool)

(assert (=> b!444933 (= e!261582 tp_is_empty!11835)))

(declare-fun mapIsEmpty!19380 () Bool)

(assert (=> mapIsEmpty!19380 mapRes!19380))

(declare-fun b!444934 () Bool)

(declare-fun res!264019 () Bool)

(assert (=> b!444934 (=> (not res!264019) (not e!261583))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!444934 (= res!264019 (validKeyInArray!0 k0!794))))

(declare-fun b!444935 () Bool)

(assert (=> b!444935 (= e!261581 (and e!261584 mapRes!19380))))

(declare-fun condMapEmpty!19380 () Bool)

(declare-fun mapDefault!19380 () ValueCell!5574)

(assert (=> b!444935 (= condMapEmpty!19380 (= (arr!13165 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5574)) mapDefault!19380)))))

(declare-fun b!444936 () Bool)

(declare-fun res!264018 () Bool)

(assert (=> b!444936 (=> (not res!264018) (not e!261583))))

(assert (=> b!444936 (= res!264018 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!444937 () Bool)

(declare-fun res!264017 () Bool)

(assert (=> b!444937 (=> (not res!264017) (not e!261583))))

(assert (=> b!444937 (= res!264017 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7853))))

(declare-fun b!444938 () Bool)

(declare-fun res!264016 () Bool)

(assert (=> b!444938 (=> (not res!264016) (not e!261583))))

(declare-fun arrayContainsKey!0 (array!27439 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!444938 (= res!264016 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(assert (= (and start!40458 res!264023) b!444930))

(assert (= (and b!444930 res!264022) b!444926))

(assert (= (and b!444926 res!264020) b!444936))

(assert (= (and b!444936 res!264018) b!444937))

(assert (= (and b!444937 res!264017) b!444927))

(assert (= (and b!444927 res!264021) b!444934))

(assert (= (and b!444934 res!264019) b!444929))

(assert (= (and b!444929 res!264024) b!444938))

(assert (= (and b!444938 res!264016) b!444928))

(assert (= (and b!444928 res!264025) b!444932))

(assert (= (and b!444935 condMapEmpty!19380) mapIsEmpty!19380))

(assert (= (and b!444935 (not condMapEmpty!19380)) mapNonEmpty!19380))

(get-info :version)

(assert (= (and mapNonEmpty!19380 ((_ is ValueCellFull!5574) mapValue!19380)) b!444933))

(assert (= (and b!444935 ((_ is ValueCellFull!5574) mapDefault!19380)) b!444931))

(assert (= start!40458 b!444935))

(declare-fun m!430583 () Bool)

(assert (=> b!444938 m!430583))

(declare-fun m!430585 () Bool)

(assert (=> b!444928 m!430585))

(declare-fun m!430587 () Bool)

(assert (=> b!444928 m!430587))

(declare-fun m!430589 () Bool)

(assert (=> b!444932 m!430589))

(declare-fun m!430591 () Bool)

(assert (=> b!444934 m!430591))

(declare-fun m!430593 () Bool)

(assert (=> b!444929 m!430593))

(declare-fun m!430595 () Bool)

(assert (=> b!444936 m!430595))

(declare-fun m!430597 () Bool)

(assert (=> mapNonEmpty!19380 m!430597))

(declare-fun m!430599 () Bool)

(assert (=> b!444930 m!430599))

(declare-fun m!430601 () Bool)

(assert (=> b!444937 m!430601))

(declare-fun m!430603 () Bool)

(assert (=> start!40458 m!430603))

(declare-fun m!430605 () Bool)

(assert (=> start!40458 m!430605))

(check-sat tp_is_empty!11835 (not b!444938) (not b!444934) (not mapNonEmpty!19380) (not b!444937) (not b!444936) (not b!444928) (not start!40458) (not b!444932) (not b!444930))
(check-sat)
