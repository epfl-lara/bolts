; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69916 () Bool)

(assert start!69916)

(declare-fun res!555266 () Bool)

(declare-fun e!450064 () Bool)

(assert (=> start!69916 (=> (not res!555266) (not e!450064))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69916 (= res!555266 (validMask!0 mask!1312))))

(assert (=> start!69916 e!450064))

(declare-datatypes ((array!44286 0))(
  ( (array!44287 (arr!21201 (Array (_ BitVec 32) (_ BitVec 64))) (size!21622 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44286)

(declare-fun array_inv!16961 (array!44286) Bool)

(assert (=> start!69916 (array_inv!16961 _keys!976)))

(assert (=> start!69916 true))

(declare-datatypes ((V!23727 0))(
  ( (V!23728 (val!7070 Int)) )
))
(declare-datatypes ((ValueCell!6607 0))(
  ( (ValueCellFull!6607 (v!9493 V!23727)) (EmptyCell!6607) )
))
(declare-datatypes ((array!44288 0))(
  ( (array!44289 (arr!21202 (Array (_ BitVec 32) ValueCell!6607)) (size!21623 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44288)

(declare-fun e!450065 () Bool)

(declare-fun array_inv!16962 (array!44288) Bool)

(assert (=> start!69916 (and (array_inv!16962 _values!788) e!450065)))

(declare-fun b!812433 () Bool)

(declare-fun e!450061 () Bool)

(declare-fun tp_is_empty!14045 () Bool)

(assert (=> b!812433 (= e!450061 tp_is_empty!14045)))

(declare-fun b!812434 () Bool)

(assert (=> b!812434 (= e!450064 false)))

(declare-fun lt!364109 () Bool)

(declare-datatypes ((List!15139 0))(
  ( (Nil!15136) (Cons!15135 (h!16264 (_ BitVec 64)) (t!21462 List!15139)) )
))
(declare-fun arrayNoDuplicates!0 (array!44286 (_ BitVec 32) List!15139) Bool)

(assert (=> b!812434 (= lt!364109 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15136))))

(declare-fun b!812435 () Bool)

(declare-fun e!450062 () Bool)

(assert (=> b!812435 (= e!450062 tp_is_empty!14045)))

(declare-fun b!812436 () Bool)

(declare-fun mapRes!22642 () Bool)

(assert (=> b!812436 (= e!450065 (and e!450062 mapRes!22642))))

(declare-fun condMapEmpty!22642 () Bool)

(declare-fun mapDefault!22642 () ValueCell!6607)

