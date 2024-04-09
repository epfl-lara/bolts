; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72338 () Bool)

(assert start!72338)

(declare-fun b!837626 () Bool)

(declare-fun res!569751 () Bool)

(declare-fun e!467570 () Bool)

(assert (=> b!837626 (=> (not res!569751) (not e!467570))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!837626 (= res!569751 (validMask!0 mask!1196))))

(declare-fun b!837627 () Bool)

(assert (=> b!837627 (= e!467570 false)))

(declare-fun lt!380553 () Bool)

(declare-datatypes ((array!46982 0))(
  ( (array!46983 (arr!22518 (Array (_ BitVec 32) (_ BitVec 64))) (size!22959 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!46982)

(declare-datatypes ((List!16091 0))(
  ( (Nil!16088) (Cons!16087 (h!17218 (_ BitVec 64)) (t!22470 List!16091)) )
))
(declare-fun arrayNoDuplicates!0 (array!46982 (_ BitVec 32) List!16091) Bool)

(assert (=> b!837627 (= lt!380553 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16088))))

(declare-fun b!837628 () Bool)

(declare-fun e!467568 () Bool)

(declare-fun tp_is_empty!15361 () Bool)

(assert (=> b!837628 (= e!467568 tp_is_empty!15361)))

(declare-fun res!569752 () Bool)

(assert (=> start!72338 (=> (not res!569752) (not e!467570))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72338 (= res!569752 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!22959 _keys!868))))))

(assert (=> start!72338 e!467570))

(assert (=> start!72338 true))

(declare-fun array_inv!17916 (array!46982) Bool)

(assert (=> start!72338 (array_inv!17916 _keys!868)))

(declare-datatypes ((V!25529 0))(
  ( (V!25530 (val!7728 Int)) )
))
(declare-datatypes ((ValueCell!7241 0))(
  ( (ValueCellFull!7241 (v!10149 V!25529)) (EmptyCell!7241) )
))
(declare-datatypes ((array!46984 0))(
  ( (array!46985 (arr!22519 (Array (_ BitVec 32) ValueCell!7241)) (size!22960 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!46984)

(declare-fun e!467567 () Bool)

(declare-fun array_inv!17917 (array!46984) Bool)

(assert (=> start!72338 (and (array_inv!17917 _values!688) e!467567)))

(declare-fun mapNonEmpty!24641 () Bool)

(declare-fun mapRes!24641 () Bool)

(declare-fun tp!47636 () Bool)

(declare-fun e!467571 () Bool)

(assert (=> mapNonEmpty!24641 (= mapRes!24641 (and tp!47636 e!467571))))

(declare-fun mapValue!24641 () ValueCell!7241)

(declare-fun mapRest!24641 () (Array (_ BitVec 32) ValueCell!7241))

(declare-fun mapKey!24641 () (_ BitVec 32))

(assert (=> mapNonEmpty!24641 (= (arr!22519 _values!688) (store mapRest!24641 mapKey!24641 mapValue!24641))))

(declare-fun b!837629 () Bool)

(assert (=> b!837629 (= e!467567 (and e!467568 mapRes!24641))))

(declare-fun condMapEmpty!24641 () Bool)

(declare-fun mapDefault!24641 () ValueCell!7241)

