; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73332 () Bool)

(assert start!73332)

(declare-fun b_free!14219 () Bool)

(declare-fun b_next!14219 () Bool)

(assert (=> start!73332 (= b_free!14219 (not b_next!14219))))

(declare-fun tp!50161 () Bool)

(declare-fun b_and!23593 () Bool)

(assert (=> start!73332 (= tp!50161 b_and!23593)))

(declare-fun b!854989 () Bool)

(declare-fun e!476734 () Bool)

(declare-fun tp_is_empty!16355 () Bool)

(assert (=> b!854989 (= e!476734 tp_is_empty!16355)))

(declare-fun b!854990 () Bool)

(declare-fun res!580753 () Bool)

(declare-fun e!476736 () Bool)

(assert (=> b!854990 (=> (not res!580753) (not e!476736))))

(declare-datatypes ((array!48886 0))(
  ( (array!48887 (arr!23470 (Array (_ BitVec 32) (_ BitVec 64))) (size!23911 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48886)

(declare-datatypes ((List!16703 0))(
  ( (Nil!16700) (Cons!16699 (h!17830 (_ BitVec 64)) (t!23352 List!16703)) )
))
(declare-fun arrayNoDuplicates!0 (array!48886 (_ BitVec 32) List!16703) Bool)

(assert (=> b!854990 (= res!580753 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16700))))

(declare-fun b!854991 () Bool)

(declare-fun res!580751 () Bool)

(assert (=> b!854991 (=> (not res!580751) (not e!476736))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!854991 (= res!580751 (validKeyInArray!0 k!854))))

(declare-fun res!580756 () Bool)

(assert (=> start!73332 (=> (not res!580756) (not e!476736))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!73332 (= res!580756 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23911 _keys!868))))))

(assert (=> start!73332 e!476736))

(assert (=> start!73332 tp_is_empty!16355))

(assert (=> start!73332 true))

(assert (=> start!73332 tp!50161))

(declare-fun array_inv!18582 (array!48886) Bool)

(assert (=> start!73332 (array_inv!18582 _keys!868)))

(declare-datatypes ((V!26853 0))(
  ( (V!26854 (val!8225 Int)) )
))
(declare-datatypes ((ValueCell!7738 0))(
  ( (ValueCellFull!7738 (v!10646 V!26853)) (EmptyCell!7738) )
))
(declare-datatypes ((array!48888 0))(
  ( (array!48889 (arr!23471 (Array (_ BitVec 32) ValueCell!7738)) (size!23912 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48888)

(declare-fun e!476733 () Bool)

(declare-fun array_inv!18583 (array!48888) Bool)

(assert (=> start!73332 (and (array_inv!18583 _values!688) e!476733)))

(declare-fun b!854992 () Bool)

(declare-fun res!580758 () Bool)

(assert (=> b!854992 (=> (not res!580758) (not e!476736))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48886 (_ BitVec 32)) Bool)

(assert (=> b!854992 (= res!580758 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!26132 () Bool)

(declare-fun mapRes!26132 () Bool)

(assert (=> mapIsEmpty!26132 mapRes!26132))

(declare-fun b!854993 () Bool)

(declare-fun res!580752 () Bool)

(assert (=> b!854993 (=> (not res!580752) (not e!476736))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!854993 (= res!580752 (and (= (select (arr!23470 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!854994 () Bool)

(declare-fun res!580754 () Bool)

(assert (=> b!854994 (=> (not res!580754) (not e!476736))))

(assert (=> b!854994 (= res!580754 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23911 _keys!868))))))

(declare-fun mapNonEmpty!26132 () Bool)

(declare-fun tp!50162 () Bool)

(assert (=> mapNonEmpty!26132 (= mapRes!26132 (and tp!50162 e!476734))))

(declare-fun mapRest!26132 () (Array (_ BitVec 32) ValueCell!7738))

(declare-fun mapValue!26132 () ValueCell!7738)

(declare-fun mapKey!26132 () (_ BitVec 32))

(assert (=> mapNonEmpty!26132 (= (arr!23471 _values!688) (store mapRest!26132 mapKey!26132 mapValue!26132))))

(declare-fun b!854995 () Bool)

(declare-fun e!476735 () Bool)

(assert (=> b!854995 (= e!476735 tp_is_empty!16355)))

(declare-fun b!854996 () Bool)

(declare-fun res!580757 () Bool)

(assert (=> b!854996 (=> (not res!580757) (not e!476736))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!854996 (= res!580757 (validMask!0 mask!1196))))

(declare-fun b!854997 () Bool)

(assert (=> b!854997 (= e!476733 (and e!476735 mapRes!26132))))

(declare-fun condMapEmpty!26132 () Bool)

(declare-fun mapDefault!26132 () ValueCell!7738)

