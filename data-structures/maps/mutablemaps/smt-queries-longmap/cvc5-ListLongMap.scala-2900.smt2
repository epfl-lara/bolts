; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41550 () Bool)

(assert start!41550)

(declare-fun b_free!11209 () Bool)

(declare-fun b_next!11209 () Bool)

(assert (=> start!41550 (= b_free!11209 (not b_next!11209))))

(declare-fun tp!39625 () Bool)

(declare-fun b_and!19567 () Bool)

(assert (=> start!41550 (= tp!39625 b_and!19567)))

(declare-fun b!463846 () Bool)

(declare-fun e!270907 () Bool)

(declare-fun tp_is_empty!12637 () Bool)

(assert (=> b!463846 (= e!270907 tp_is_empty!12637)))

(declare-fun b!463847 () Bool)

(declare-fun res!277400 () Bool)

(declare-fun e!270909 () Bool)

(assert (=> b!463847 (=> (not res!277400) (not e!270909))))

(declare-datatypes ((array!29029 0))(
  ( (array!29030 (arr!13943 (Array (_ BitVec 32) (_ BitVec 64))) (size!14295 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29029)

(declare-datatypes ((List!8442 0))(
  ( (Nil!8439) (Cons!8438 (h!9294 (_ BitVec 64)) (t!14396 List!8442)) )
))
(declare-fun arrayNoDuplicates!0 (array!29029 (_ BitVec 32) List!8442) Bool)

(assert (=> b!463847 (= res!277400 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8439))))

(declare-fun b!463848 () Bool)

(declare-fun res!277402 () Bool)

(assert (=> b!463848 (=> (not res!277402) (not e!270909))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29029 (_ BitVec 32)) Bool)

(assert (=> b!463848 (= res!277402 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapIsEmpty!20632 () Bool)

(declare-fun mapRes!20632 () Bool)

(assert (=> mapIsEmpty!20632 mapRes!20632))

(declare-fun mapNonEmpty!20632 () Bool)

(declare-fun tp!39624 () Bool)

(assert (=> mapNonEmpty!20632 (= mapRes!20632 (and tp!39624 e!270907))))

(declare-datatypes ((V!17955 0))(
  ( (V!17956 (val!6363 Int)) )
))
(declare-datatypes ((ValueCell!5975 0))(
  ( (ValueCellFull!5975 (v!8646 V!17955)) (EmptyCell!5975) )
))
(declare-datatypes ((array!29031 0))(
  ( (array!29032 (arr!13944 (Array (_ BitVec 32) ValueCell!5975)) (size!14296 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29031)

(declare-fun mapKey!20632 () (_ BitVec 32))

(declare-fun mapValue!20632 () ValueCell!5975)

(declare-fun mapRest!20632 () (Array (_ BitVec 32) ValueCell!5975))

(assert (=> mapNonEmpty!20632 (= (arr!13944 _values!833) (store mapRest!20632 mapKey!20632 mapValue!20632))))

(declare-fun b!463849 () Bool)

(declare-fun e!270906 () Bool)

(assert (=> b!463849 (= e!270906 tp_is_empty!12637)))

(declare-fun b!463850 () Bool)

(declare-fun e!270908 () Bool)

(assert (=> b!463850 (= e!270908 (and e!270906 mapRes!20632))))

(declare-fun condMapEmpty!20632 () Bool)

(declare-fun mapDefault!20632 () ValueCell!5975)

