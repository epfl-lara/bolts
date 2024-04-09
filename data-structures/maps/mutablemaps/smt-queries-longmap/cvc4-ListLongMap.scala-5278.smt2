; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70846 () Bool)

(assert start!70846)

(declare-fun b_free!13079 () Bool)

(declare-fun b_next!13079 () Bool)

(assert (=> start!70846 (= b_free!13079 (not b_next!13079))))

(declare-fun tp!45982 () Bool)

(declare-fun b_and!21969 () Bool)

(assert (=> start!70846 (= tp!45982 b_and!21969)))

(declare-fun b!822463 () Bool)

(declare-fun e!457342 () Bool)

(declare-fun tp_is_empty!14789 () Bool)

(assert (=> b!822463 (= e!457342 tp_is_empty!14789)))

(declare-fun res!561077 () Bool)

(declare-fun e!457343 () Bool)

(assert (=> start!70846 (=> (not res!561077) (not e!457343))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70846 (= res!561077 (validMask!0 mask!1312))))

(assert (=> start!70846 e!457343))

(assert (=> start!70846 tp_is_empty!14789))

(declare-datatypes ((array!45730 0))(
  ( (array!45731 (arr!21911 (Array (_ BitVec 32) (_ BitVec 64))) (size!22332 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45730)

(declare-fun array_inv!17469 (array!45730) Bool)

(assert (=> start!70846 (array_inv!17469 _keys!976)))

(assert (=> start!70846 true))

(declare-datatypes ((V!24719 0))(
  ( (V!24720 (val!7442 Int)) )
))
(declare-datatypes ((ValueCell!6979 0))(
  ( (ValueCellFull!6979 (v!9869 V!24719)) (EmptyCell!6979) )
))
(declare-datatypes ((array!45732 0))(
  ( (array!45733 (arr!21912 (Array (_ BitVec 32) ValueCell!6979)) (size!22333 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45732)

(declare-fun e!457338 () Bool)

(declare-fun array_inv!17470 (array!45732) Bool)

(assert (=> start!70846 (and (array_inv!17470 _values!788) e!457338)))

(assert (=> start!70846 tp!45982))

(declare-fun b!822464 () Bool)

(declare-fun res!561076 () Bool)

(assert (=> b!822464 (=> (not res!561076) (not e!457343))))

(declare-datatypes ((List!15685 0))(
  ( (Nil!15682) (Cons!15681 (h!16810 (_ BitVec 64)) (t!22030 List!15685)) )
))
(declare-fun arrayNoDuplicates!0 (array!45730 (_ BitVec 32) List!15685) Bool)

(assert (=> b!822464 (= res!561076 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15682))))

(declare-fun mapIsEmpty!23794 () Bool)

(declare-fun mapRes!23794 () Bool)

(assert (=> mapIsEmpty!23794 mapRes!23794))

(declare-fun b!822465 () Bool)

(assert (=> b!822465 (= e!457338 (and e!457342 mapRes!23794))))

(declare-fun condMapEmpty!23794 () Bool)

(declare-fun mapDefault!23794 () ValueCell!6979)

