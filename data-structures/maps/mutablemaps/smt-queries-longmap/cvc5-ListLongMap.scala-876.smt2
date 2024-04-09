; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20364 () Bool)

(assert start!20364)

(declare-fun b_free!5011 () Bool)

(declare-fun b_next!5011 () Bool)

(assert (=> start!20364 (= b_free!5011 (not b_next!5011))))

(declare-fun tp!18065 () Bool)

(declare-fun b_and!11775 () Bool)

(assert (=> start!20364 (= tp!18065 b_and!11775)))

(declare-fun b!200782 () Bool)

(declare-fun e!131646 () Bool)

(declare-fun e!131644 () Bool)

(assert (=> b!200782 (= e!131646 (not e!131644))))

(declare-fun res!95789 () Bool)

(assert (=> b!200782 (=> res!95789 e!131644)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!200782 (= res!95789 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-datatypes ((V!6137 0))(
  ( (V!6138 (val!2478 Int)) )
))
(declare-datatypes ((tuple2!3744 0))(
  ( (tuple2!3745 (_1!1882 (_ BitVec 64)) (_2!1882 V!6137)) )
))
(declare-datatypes ((List!2684 0))(
  ( (Nil!2681) (Cons!2680 (h!3322 tuple2!3744) (t!7623 List!2684)) )
))
(declare-datatypes ((ListLongMap!2671 0))(
  ( (ListLongMap!2672 (toList!1351 List!2684)) )
))
(declare-fun lt!99582 () ListLongMap!2671)

(declare-fun zeroValue!615 () V!6137)

(declare-datatypes ((array!8964 0))(
  ( (array!8965 (arr!4232 (Array (_ BitVec 32) (_ BitVec 64))) (size!4557 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8964)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6137)

(declare-datatypes ((ValueCell!2090 0))(
  ( (ValueCellFull!2090 (v!4444 V!6137)) (EmptyCell!2090) )
))
(declare-datatypes ((array!8966 0))(
  ( (array!8967 (arr!4233 (Array (_ BitVec 32) ValueCell!2090)) (size!4558 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8966)

(declare-fun getCurrentListMap!935 (array!8964 array!8966 (_ BitVec 32) (_ BitVec 32) V!6137 V!6137 (_ BitVec 32) Int) ListLongMap!2671)

(assert (=> b!200782 (= lt!99582 (getCurrentListMap!935 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!99577 () array!8966)

(declare-fun lt!99587 () ListLongMap!2671)

(assert (=> b!200782 (= lt!99587 (getCurrentListMap!935 _keys!825 lt!99577 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!99579 () ListLongMap!2671)

(declare-fun lt!99585 () ListLongMap!2671)

(assert (=> b!200782 (and (= lt!99579 lt!99585) (= lt!99585 lt!99579))))

(declare-fun lt!99581 () ListLongMap!2671)

(declare-fun lt!99583 () tuple2!3744)

(declare-fun +!368 (ListLongMap!2671 tuple2!3744) ListLongMap!2671)

(assert (=> b!200782 (= lt!99585 (+!368 lt!99581 lt!99583))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun v!520 () V!6137)

(assert (=> b!200782 (= lt!99583 (tuple2!3745 k!843 v!520))))

(declare-datatypes ((Unit!6043 0))(
  ( (Unit!6044) )
))
(declare-fun lt!99588 () Unit!6043)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!48 (array!8964 array!8966 (_ BitVec 32) (_ BitVec 32) V!6137 V!6137 (_ BitVec 32) (_ BitVec 64) V!6137 (_ BitVec 32) Int) Unit!6043)

(assert (=> b!200782 (= lt!99588 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!48 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!306 (array!8964 array!8966 (_ BitVec 32) (_ BitVec 32) V!6137 V!6137 (_ BitVec 32) Int) ListLongMap!2671)

(assert (=> b!200782 (= lt!99579 (getCurrentListMapNoExtraKeys!306 _keys!825 lt!99577 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!200782 (= lt!99577 (array!8967 (store (arr!4233 _values!649) i!601 (ValueCellFull!2090 v!520)) (size!4558 _values!649)))))

(assert (=> b!200782 (= lt!99581 (getCurrentListMapNoExtraKeys!306 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!200783 () Bool)

(declare-fun res!95788 () Bool)

(assert (=> b!200783 (=> (not res!95788) (not e!131646))))

(assert (=> b!200783 (= res!95788 (and (= (size!4558 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4557 _keys!825) (size!4558 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!200784 () Bool)

(declare-fun res!95790 () Bool)

(assert (=> b!200784 (=> (not res!95790) (not e!131646))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8964 (_ BitVec 32)) Bool)

(assert (=> b!200784 (= res!95790 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!200785 () Bool)

(declare-fun res!95787 () Bool)

(assert (=> b!200785 (=> (not res!95787) (not e!131646))))

(declare-datatypes ((List!2685 0))(
  ( (Nil!2682) (Cons!2681 (h!3323 (_ BitVec 64)) (t!7624 List!2685)) )
))
(declare-fun arrayNoDuplicates!0 (array!8964 (_ BitVec 32) List!2685) Bool)

(assert (=> b!200785 (= res!95787 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2682))))

(declare-fun b!200787 () Bool)

(declare-fun res!95794 () Bool)

(assert (=> b!200787 (=> (not res!95794) (not e!131646))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!200787 (= res!95794 (validKeyInArray!0 k!843))))

(declare-fun b!200788 () Bool)

(declare-fun e!131649 () Bool)

(assert (=> b!200788 (= e!131644 e!131649)))

(declare-fun res!95791 () Bool)

(assert (=> b!200788 (=> res!95791 e!131649)))

(assert (=> b!200788 (= res!95791 (= k!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!99578 () ListLongMap!2671)

(declare-fun lt!99574 () ListLongMap!2671)

(assert (=> b!200788 (= lt!99578 lt!99574)))

(declare-fun lt!99589 () ListLongMap!2671)

(assert (=> b!200788 (= lt!99574 (+!368 lt!99589 lt!99583))))

(declare-fun lt!99580 () Unit!6043)

(declare-fun addCommutativeForDiffKeys!89 (ListLongMap!2671 (_ BitVec 64) V!6137 (_ BitVec 64) V!6137) Unit!6043)

(assert (=> b!200788 (= lt!99580 (addCommutativeForDiffKeys!89 lt!99581 k!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun lt!99584 () tuple2!3744)

(assert (=> b!200788 (= lt!99587 (+!368 lt!99578 lt!99584))))

(declare-fun lt!99576 () tuple2!3744)

(assert (=> b!200788 (= lt!99578 (+!368 lt!99585 lt!99576))))

(declare-fun lt!99586 () ListLongMap!2671)

(assert (=> b!200788 (= lt!99582 lt!99586)))

(assert (=> b!200788 (= lt!99586 (+!368 lt!99589 lt!99584))))

(assert (=> b!200788 (= lt!99589 (+!368 lt!99581 lt!99576))))

(assert (=> b!200788 (= lt!99587 (+!368 (+!368 lt!99579 lt!99576) lt!99584))))

(assert (=> b!200788 (= lt!99584 (tuple2!3745 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (=> b!200788 (= lt!99576 (tuple2!3745 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!200789 () Bool)

(declare-fun res!95793 () Bool)

(assert (=> b!200789 (=> (not res!95793) (not e!131646))))

(assert (=> b!200789 (= res!95793 (= (select (arr!4232 _keys!825) i!601) k!843))))

(declare-fun b!200790 () Bool)

(declare-fun res!95792 () Bool)

(assert (=> b!200790 (=> (not res!95792) (not e!131646))))

(assert (=> b!200790 (= res!95792 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4557 _keys!825))))))

(declare-fun res!95786 () Bool)

(assert (=> start!20364 (=> (not res!95786) (not e!131646))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20364 (= res!95786 (validMask!0 mask!1149))))

(assert (=> start!20364 e!131646))

(declare-fun e!131647 () Bool)

(declare-fun array_inv!2775 (array!8966) Bool)

(assert (=> start!20364 (and (array_inv!2775 _values!649) e!131647)))

(assert (=> start!20364 true))

(declare-fun tp_is_empty!4867 () Bool)

(assert (=> start!20364 tp_is_empty!4867))

(declare-fun array_inv!2776 (array!8964) Bool)

(assert (=> start!20364 (array_inv!2776 _keys!825)))

(assert (=> start!20364 tp!18065))

(declare-fun b!200786 () Bool)

(assert (=> b!200786 (= e!131649 true)))

(assert (=> b!200786 (= (+!368 lt!99574 lt!99584) (+!368 lt!99586 lt!99583))))

(declare-fun lt!99575 () Unit!6043)

(assert (=> b!200786 (= lt!99575 (addCommutativeForDiffKeys!89 lt!99589 k!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun mapNonEmpty!8369 () Bool)

(declare-fun mapRes!8369 () Bool)

(declare-fun tp!18064 () Bool)

(declare-fun e!131645 () Bool)

(assert (=> mapNonEmpty!8369 (= mapRes!8369 (and tp!18064 e!131645))))

(declare-fun mapValue!8369 () ValueCell!2090)

(declare-fun mapRest!8369 () (Array (_ BitVec 32) ValueCell!2090))

(declare-fun mapKey!8369 () (_ BitVec 32))

(assert (=> mapNonEmpty!8369 (= (arr!4233 _values!649) (store mapRest!8369 mapKey!8369 mapValue!8369))))

(declare-fun b!200791 () Bool)

(declare-fun e!131648 () Bool)

(assert (=> b!200791 (= e!131647 (and e!131648 mapRes!8369))))

(declare-fun condMapEmpty!8369 () Bool)

(declare-fun mapDefault!8369 () ValueCell!2090)

