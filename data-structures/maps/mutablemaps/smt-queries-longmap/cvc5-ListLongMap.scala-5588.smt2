; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73340 () Bool)

(assert start!73340)

(declare-fun b_free!14227 () Bool)

(declare-fun b_next!14227 () Bool)

(assert (=> start!73340 (= b_free!14227 (not b_next!14227))))

(declare-fun tp!50186 () Bool)

(declare-fun b_and!23601 () Bool)

(assert (=> start!73340 (= tp!50186 b_and!23601)))

(declare-fun b!855121 () Bool)

(declare-fun res!580847 () Bool)

(declare-fun e!476796 () Bool)

(assert (=> b!855121 (=> (not res!580847) (not e!476796))))

(declare-datatypes ((array!48902 0))(
  ( (array!48903 (arr!23478 (Array (_ BitVec 32) (_ BitVec 64))) (size!23919 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48902)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48902 (_ BitVec 32)) Bool)

(assert (=> b!855121 (= res!580847 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!855122 () Bool)

(declare-fun res!580853 () Bool)

(assert (=> b!855122 (=> (not res!580853) (not e!476796))))

(declare-datatypes ((List!16708 0))(
  ( (Nil!16705) (Cons!16704 (h!17835 (_ BitVec 64)) (t!23357 List!16708)) )
))
(declare-fun arrayNoDuplicates!0 (array!48902 (_ BitVec 32) List!16708) Bool)

(assert (=> b!855122 (= res!580853 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16705))))

(declare-fun res!580849 () Bool)

(assert (=> start!73340 (=> (not res!580849) (not e!476796))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!73340 (= res!580849 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23919 _keys!868))))))

(assert (=> start!73340 e!476796))

(declare-fun tp_is_empty!16363 () Bool)

(assert (=> start!73340 tp_is_empty!16363))

(assert (=> start!73340 true))

(assert (=> start!73340 tp!50186))

(declare-fun array_inv!18590 (array!48902) Bool)

(assert (=> start!73340 (array_inv!18590 _keys!868)))

(declare-datatypes ((V!26865 0))(
  ( (V!26866 (val!8229 Int)) )
))
(declare-datatypes ((ValueCell!7742 0))(
  ( (ValueCellFull!7742 (v!10650 V!26865)) (EmptyCell!7742) )
))
(declare-datatypes ((array!48904 0))(
  ( (array!48905 (arr!23479 (Array (_ BitVec 32) ValueCell!7742)) (size!23920 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48904)

(declare-fun e!476794 () Bool)

(declare-fun array_inv!18591 (array!48904) Bool)

(assert (=> start!73340 (and (array_inv!18591 _values!688) e!476794)))

(declare-fun b!855123 () Bool)

(declare-fun e!476792 () Bool)

(declare-fun mapRes!26144 () Bool)

(assert (=> b!855123 (= e!476794 (and e!476792 mapRes!26144))))

(declare-fun condMapEmpty!26144 () Bool)

(declare-fun mapDefault!26144 () ValueCell!7742)

