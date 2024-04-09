; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70392 () Bool)

(assert start!70392)

(declare-fun b_free!12725 () Bool)

(declare-fun b_next!12725 () Bool)

(assert (=> start!70392 (= b_free!12725 (not b_next!12725))))

(declare-fun tp!44902 () Bool)

(declare-fun b_and!21555 () Bool)

(assert (=> start!70392 (= tp!44902 b_and!21555)))

(declare-fun b!817308 () Bool)

(declare-fun res!558009 () Bool)

(declare-fun e!453554 () Bool)

(assert (=> b!817308 (=> (not res!558009) (not e!453554))))

(declare-datatypes ((array!45044 0))(
  ( (array!45045 (arr!21574 (Array (_ BitVec 32) (_ BitVec 64))) (size!21995 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45044)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45044 (_ BitVec 32)) Bool)

(assert (=> b!817308 (= res!558009 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!23245 () Bool)

(declare-fun mapRes!23245 () Bool)

(assert (=> mapIsEmpty!23245 mapRes!23245))

(declare-fun b!817309 () Bool)

(declare-fun res!558008 () Bool)

(assert (=> b!817309 (=> (not res!558008) (not e!453554))))

(declare-datatypes ((List!15422 0))(
  ( (Nil!15419) (Cons!15418 (h!16547 (_ BitVec 64)) (t!21755 List!15422)) )
))
(declare-fun arrayNoDuplicates!0 (array!45044 (_ BitVec 32) List!15422) Bool)

(assert (=> b!817309 (= res!558008 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15419))))

(declare-fun b!817310 () Bool)

(declare-fun e!453553 () Bool)

(declare-fun e!453555 () Bool)

(assert (=> b!817310 (= e!453553 (and e!453555 mapRes!23245))))

(declare-fun condMapEmpty!23245 () Bool)

(declare-datatypes ((V!24247 0))(
  ( (V!24248 (val!7265 Int)) )
))
(declare-datatypes ((ValueCell!6802 0))(
  ( (ValueCellFull!6802 (v!9690 V!24247)) (EmptyCell!6802) )
))
(declare-datatypes ((array!45046 0))(
  ( (array!45047 (arr!21575 (Array (_ BitVec 32) ValueCell!6802)) (size!21996 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45046)

(declare-fun mapDefault!23245 () ValueCell!6802)

