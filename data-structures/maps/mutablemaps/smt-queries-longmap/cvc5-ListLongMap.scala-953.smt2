; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20826 () Bool)

(assert start!20826)

(declare-fun b_free!5467 () Bool)

(declare-fun b_next!5467 () Bool)

(assert (=> start!20826 (= b_free!5467 (not b_next!5467))))

(declare-fun tp!19442 () Bool)

(declare-fun b_and!12231 () Bool)

(assert (=> start!20826 (= tp!19442 b_and!12231)))

(declare-fun b!208626 () Bool)

(declare-fun res!101556 () Bool)

(declare-fun e!136044 () Bool)

(assert (=> b!208626 (=> (not res!101556) (not e!136044))))

(declare-datatypes ((array!9860 0))(
  ( (array!9861 (arr!4680 (Array (_ BitVec 32) (_ BitVec 64))) (size!5005 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9860)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9860 (_ BitVec 32)) Bool)

(assert (=> b!208626 (= res!101556 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!208627 () Bool)

(declare-fun res!101551 () Bool)

(assert (=> b!208627 (=> (not res!101551) (not e!136044))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6753 0))(
  ( (V!6754 (val!2709 Int)) )
))
(declare-datatypes ((ValueCell!2321 0))(
  ( (ValueCellFull!2321 (v!4675 V!6753)) (EmptyCell!2321) )
))
(declare-datatypes ((array!9862 0))(
  ( (array!9863 (arr!4681 (Array (_ BitVec 32) ValueCell!2321)) (size!5006 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9862)

(assert (=> b!208627 (= res!101551 (and (= (size!5006 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5005 _keys!825) (size!5006 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!208628 () Bool)

(assert (=> b!208628 (= e!136044 false)))

(declare-fun v!520 () V!6753)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!6753)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6753)

(declare-datatypes ((tuple2!4098 0))(
  ( (tuple2!4099 (_1!2059 (_ BitVec 64)) (_2!2059 V!6753)) )
))
(declare-datatypes ((List!3018 0))(
  ( (Nil!3015) (Cons!3014 (h!3656 tuple2!4098) (t!7957 List!3018)) )
))
(declare-datatypes ((ListLongMap!3025 0))(
  ( (ListLongMap!3026 (toList!1528 List!3018)) )
))
(declare-fun lt!106854 () ListLongMap!3025)

(declare-fun getCurrentListMapNoExtraKeys!461 (array!9860 array!9862 (_ BitVec 32) (_ BitVec 32) V!6753 V!6753 (_ BitVec 32) Int) ListLongMap!3025)

(assert (=> b!208628 (= lt!106854 (getCurrentListMapNoExtraKeys!461 _keys!825 (array!9863 (store (arr!4681 _values!649) i!601 (ValueCellFull!2321 v!520)) (size!5006 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106855 () ListLongMap!3025)

(assert (=> b!208628 (= lt!106855 (getCurrentListMapNoExtraKeys!461 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!208629 () Bool)

(declare-fun res!101554 () Bool)

(assert (=> b!208629 (=> (not res!101554) (not e!136044))))

(declare-datatypes ((List!3019 0))(
  ( (Nil!3016) (Cons!3015 (h!3657 (_ BitVec 64)) (t!7958 List!3019)) )
))
(declare-fun arrayNoDuplicates!0 (array!9860 (_ BitVec 32) List!3019) Bool)

(assert (=> b!208629 (= res!101554 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3016))))

(declare-fun b!208630 () Bool)

(declare-fun res!101553 () Bool)

(assert (=> b!208630 (=> (not res!101553) (not e!136044))))

(declare-fun k!843 () (_ BitVec 64))

(assert (=> b!208630 (= res!101553 (= (select (arr!4680 _keys!825) i!601) k!843))))

(declare-fun b!208631 () Bool)

(declare-fun res!101557 () Bool)

(assert (=> b!208631 (=> (not res!101557) (not e!136044))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!208631 (= res!101557 (validKeyInArray!0 k!843))))

(declare-fun res!101555 () Bool)

(assert (=> start!20826 (=> (not res!101555) (not e!136044))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20826 (= res!101555 (validMask!0 mask!1149))))

(assert (=> start!20826 e!136044))

(declare-fun e!136042 () Bool)

(declare-fun array_inv!3097 (array!9862) Bool)

(assert (=> start!20826 (and (array_inv!3097 _values!649) e!136042)))

(assert (=> start!20826 true))

(declare-fun tp_is_empty!5329 () Bool)

(assert (=> start!20826 tp_is_empty!5329))

(declare-fun array_inv!3098 (array!9860) Bool)

(assert (=> start!20826 (array_inv!3098 _keys!825)))

(assert (=> start!20826 tp!19442))

(declare-fun b!208632 () Bool)

(declare-fun e!136045 () Bool)

(declare-fun mapRes!9062 () Bool)

(assert (=> b!208632 (= e!136042 (and e!136045 mapRes!9062))))

(declare-fun condMapEmpty!9062 () Bool)

(declare-fun mapDefault!9062 () ValueCell!2321)

