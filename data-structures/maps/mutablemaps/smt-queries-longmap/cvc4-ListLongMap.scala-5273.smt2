; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70816 () Bool)

(assert start!70816)

(declare-fun b_free!13049 () Bool)

(declare-fun b_next!13049 () Bool)

(assert (=> start!70816 (= b_free!13049 (not b_next!13049))))

(declare-fun tp!45892 () Bool)

(declare-fun b_and!21939 () Bool)

(assert (=> start!70816 (= tp!45892 b_and!21939)))

(declare-fun b!822103 () Bool)

(declare-fun res!560853 () Bool)

(declare-fun e!457071 () Bool)

(assert (=> b!822103 (=> (not res!560853) (not e!457071))))

(declare-datatypes ((array!45670 0))(
  ( (array!45671 (arr!21881 (Array (_ BitVec 32) (_ BitVec 64))) (size!22302 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45670)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24679 0))(
  ( (V!24680 (val!7427 Int)) )
))
(declare-datatypes ((ValueCell!6964 0))(
  ( (ValueCellFull!6964 (v!9854 V!24679)) (EmptyCell!6964) )
))
(declare-datatypes ((array!45672 0))(
  ( (array!45673 (arr!21882 (Array (_ BitVec 32) ValueCell!6964)) (size!22303 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45672)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!822103 (= res!560853 (and (= (size!22303 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22302 _keys!976) (size!22303 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!23749 () Bool)

(declare-fun mapRes!23749 () Bool)

(assert (=> mapIsEmpty!23749 mapRes!23749))

(declare-fun b!822104 () Bool)

(declare-fun res!560851 () Bool)

(assert (=> b!822104 (=> (not res!560851) (not e!457071))))

(declare-datatypes ((List!15659 0))(
  ( (Nil!15656) (Cons!15655 (h!16784 (_ BitVec 64)) (t!22004 List!15659)) )
))
(declare-fun arrayNoDuplicates!0 (array!45670 (_ BitVec 32) List!15659) Bool)

(assert (=> b!822104 (= res!560851 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15656))))

(declare-fun res!560852 () Bool)

(assert (=> start!70816 (=> (not res!560852) (not e!457071))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70816 (= res!560852 (validMask!0 mask!1312))))

(assert (=> start!70816 e!457071))

(declare-fun tp_is_empty!14759 () Bool)

(assert (=> start!70816 tp_is_empty!14759))

(declare-fun array_inv!17449 (array!45670) Bool)

(assert (=> start!70816 (array_inv!17449 _keys!976)))

(assert (=> start!70816 true))

(declare-fun e!457072 () Bool)

(declare-fun array_inv!17450 (array!45672) Bool)

(assert (=> start!70816 (and (array_inv!17450 _values!788) e!457072)))

(assert (=> start!70816 tp!45892))

(declare-fun b!822105 () Bool)

(declare-fun e!457068 () Bool)

(assert (=> b!822105 (= e!457072 (and e!457068 mapRes!23749))))

(declare-fun condMapEmpty!23749 () Bool)

(declare-fun mapDefault!23749 () ValueCell!6964)

