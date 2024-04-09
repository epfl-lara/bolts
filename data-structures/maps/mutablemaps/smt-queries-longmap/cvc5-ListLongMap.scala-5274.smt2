; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70818 () Bool)

(assert start!70818)

(declare-fun b_free!13051 () Bool)

(declare-fun b_next!13051 () Bool)

(assert (=> start!70818 (= b_free!13051 (not b_next!13051))))

(declare-fun tp!45897 () Bool)

(declare-fun b_and!21941 () Bool)

(assert (=> start!70818 (= tp!45897 b_and!21941)))

(declare-fun mapNonEmpty!23752 () Bool)

(declare-fun mapRes!23752 () Bool)

(declare-fun tp!45898 () Bool)

(declare-fun e!457088 () Bool)

(assert (=> mapNonEmpty!23752 (= mapRes!23752 (and tp!45898 e!457088))))

(declare-datatypes ((V!24683 0))(
  ( (V!24684 (val!7428 Int)) )
))
(declare-datatypes ((ValueCell!6965 0))(
  ( (ValueCellFull!6965 (v!9855 V!24683)) (EmptyCell!6965) )
))
(declare-fun mapValue!23752 () ValueCell!6965)

(declare-fun mapKey!23752 () (_ BitVec 32))

(declare-fun mapRest!23752 () (Array (_ BitVec 32) ValueCell!6965))

(declare-datatypes ((array!45674 0))(
  ( (array!45675 (arr!21883 (Array (_ BitVec 32) ValueCell!6965)) (size!22304 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45674)

(assert (=> mapNonEmpty!23752 (= (arr!21883 _values!788) (store mapRest!23752 mapKey!23752 mapValue!23752))))

(declare-fun b!822127 () Bool)

(declare-fun res!560869 () Bool)

(declare-fun e!457091 () Bool)

(assert (=> b!822127 (=> (not res!560869) (not e!457091))))

(declare-datatypes ((array!45676 0))(
  ( (array!45677 (arr!21884 (Array (_ BitVec 32) (_ BitVec 64))) (size!22305 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45676)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45676 (_ BitVec 32)) Bool)

(assert (=> b!822127 (= res!560869 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!822128 () Bool)

(declare-fun res!560870 () Bool)

(assert (=> b!822128 (=> (not res!560870) (not e!457091))))

(declare-datatypes ((List!15660 0))(
  ( (Nil!15657) (Cons!15656 (h!16785 (_ BitVec 64)) (t!22005 List!15660)) )
))
(declare-fun arrayNoDuplicates!0 (array!45676 (_ BitVec 32) List!15660) Bool)

(assert (=> b!822128 (= res!560870 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15657))))

(declare-fun b!822129 () Bool)

(declare-fun e!457089 () Bool)

(declare-fun e!457086 () Bool)

(assert (=> b!822129 (= e!457089 (and e!457086 mapRes!23752))))

(declare-fun condMapEmpty!23752 () Bool)

(declare-fun mapDefault!23752 () ValueCell!6965)

