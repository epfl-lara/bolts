; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70478 () Bool)

(assert start!70478)

(declare-fun b_free!12797 () Bool)

(declare-fun b_next!12797 () Bool)

(assert (=> start!70478 (= b_free!12797 (not b_next!12797))))

(declare-fun tp!45120 () Bool)

(declare-fun b_and!21635 () Bool)

(assert (=> start!70478 (= tp!45120 b_and!21635)))

(declare-fun b!818220 () Bool)

(declare-fun res!558544 () Bool)

(declare-fun e!454219 () Bool)

(assert (=> b!818220 (=> (not res!558544) (not e!454219))))

(declare-datatypes ((array!45186 0))(
  ( (array!45187 (arr!21644 (Array (_ BitVec 32) (_ BitVec 64))) (size!22065 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45186)

(declare-datatypes ((List!15476 0))(
  ( (Nil!15473) (Cons!15472 (h!16601 (_ BitVec 64)) (t!21811 List!15476)) )
))
(declare-fun arrayNoDuplicates!0 (array!45186 (_ BitVec 32) List!15476) Bool)

(assert (=> b!818220 (= res!558544 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15473))))

(declare-fun b!818221 () Bool)

(declare-fun res!558542 () Bool)

(assert (=> b!818221 (=> (not res!558542) (not e!454219))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24343 0))(
  ( (V!24344 (val!7301 Int)) )
))
(declare-datatypes ((ValueCell!6838 0))(
  ( (ValueCellFull!6838 (v!9726 V!24343)) (EmptyCell!6838) )
))
(declare-datatypes ((array!45188 0))(
  ( (array!45189 (arr!21645 (Array (_ BitVec 32) ValueCell!6838)) (size!22066 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45188)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!818221 (= res!558542 (and (= (size!22066 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22065 _keys!976) (size!22066 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!23356 () Bool)

(declare-fun mapRes!23356 () Bool)

(declare-fun tp!45121 () Bool)

(declare-fun e!454220 () Bool)

(assert (=> mapNonEmpty!23356 (= mapRes!23356 (and tp!45121 e!454220))))

(declare-fun mapKey!23356 () (_ BitVec 32))

(declare-fun mapRest!23356 () (Array (_ BitVec 32) ValueCell!6838))

(declare-fun mapValue!23356 () ValueCell!6838)

(assert (=> mapNonEmpty!23356 (= (arr!21645 _values!788) (store mapRest!23356 mapKey!23356 mapValue!23356))))

(declare-fun b!818223 () Bool)

(declare-fun tp_is_empty!14507 () Bool)

(assert (=> b!818223 (= e!454220 tp_is_empty!14507)))

(declare-fun b!818224 () Bool)

(declare-fun res!558541 () Bool)

(assert (=> b!818224 (=> (not res!558541) (not e!454219))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45186 (_ BitVec 32)) Bool)

(assert (=> b!818224 (= res!558541 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!818225 () Bool)

(declare-fun e!454224 () Bool)

(assert (=> b!818225 (= e!454224 tp_is_empty!14507)))

(declare-fun mapIsEmpty!23356 () Bool)

(assert (=> mapIsEmpty!23356 mapRes!23356))

(declare-fun b!818222 () Bool)

(declare-fun e!454221 () Bool)

(assert (=> b!818222 (= e!454221 (and e!454224 mapRes!23356))))

(declare-fun condMapEmpty!23356 () Bool)

(declare-fun mapDefault!23356 () ValueCell!6838)

