; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70024 () Bool)

(assert start!70024)

(declare-fun b_free!12421 () Bool)

(declare-fun b_next!12421 () Bool)

(assert (=> start!70024 (= b_free!12421 (not b_next!12421))))

(declare-fun tp!43978 () Bool)

(declare-fun b_and!21211 () Bool)

(assert (=> start!70024 (= tp!43978 b_and!21211)))

(declare-fun b!813416 () Bool)

(declare-fun res!555794 () Bool)

(declare-fun e!450782 () Bool)

(assert (=> b!813416 (=> (not res!555794) (not e!450782))))

(declare-datatypes ((array!44452 0))(
  ( (array!44453 (arr!21282 (Array (_ BitVec 32) (_ BitVec 64))) (size!21703 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44452)

(declare-datatypes ((List!15194 0))(
  ( (Nil!15191) (Cons!15190 (h!16319 (_ BitVec 64)) (t!21519 List!15194)) )
))
(declare-fun arrayNoDuplicates!0 (array!44452 (_ BitVec 32) List!15194) Bool)

(assert (=> b!813416 (= res!555794 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15191))))

(declare-fun res!555795 () Bool)

(assert (=> start!70024 (=> (not res!555795) (not e!450782))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70024 (= res!555795 (validMask!0 mask!1312))))

(assert (=> start!70024 e!450782))

(declare-fun tp_is_empty!14131 () Bool)

(assert (=> start!70024 tp_is_empty!14131))

(declare-fun array_inv!17023 (array!44452) Bool)

(assert (=> start!70024 (array_inv!17023 _keys!976)))

(assert (=> start!70024 true))

(declare-datatypes ((V!23843 0))(
  ( (V!23844 (val!7113 Int)) )
))
(declare-datatypes ((ValueCell!6650 0))(
  ( (ValueCellFull!6650 (v!9536 V!23843)) (EmptyCell!6650) )
))
(declare-datatypes ((array!44454 0))(
  ( (array!44455 (arr!21283 (Array (_ BitVec 32) ValueCell!6650)) (size!21704 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44454)

(declare-fun e!450783 () Bool)

(declare-fun array_inv!17024 (array!44454) Bool)

(assert (=> start!70024 (and (array_inv!17024 _values!788) e!450783)))

(assert (=> start!70024 tp!43978))

(declare-fun b!813417 () Bool)

(declare-fun e!450781 () Bool)

(assert (=> b!813417 (= e!450781 tp_is_empty!14131)))

(declare-fun b!813418 () Bool)

(declare-fun e!450784 () Bool)

(assert (=> b!813418 (= e!450784 tp_is_empty!14131)))

(declare-fun mapIsEmpty!22777 () Bool)

(declare-fun mapRes!22777 () Bool)

(assert (=> mapIsEmpty!22777 mapRes!22777))

(declare-fun mapNonEmpty!22777 () Bool)

(declare-fun tp!43977 () Bool)

(assert (=> mapNonEmpty!22777 (= mapRes!22777 (and tp!43977 e!450784))))

(declare-fun mapKey!22777 () (_ BitVec 32))

(declare-fun mapRest!22777 () (Array (_ BitVec 32) ValueCell!6650))

(declare-fun mapValue!22777 () ValueCell!6650)

(assert (=> mapNonEmpty!22777 (= (arr!21283 _values!788) (store mapRest!22777 mapKey!22777 mapValue!22777))))

(declare-fun b!813419 () Bool)

(assert (=> b!813419 (= e!450783 (and e!450781 mapRes!22777))))

(declare-fun condMapEmpty!22777 () Bool)

(declare-fun mapDefault!22777 () ValueCell!6650)

