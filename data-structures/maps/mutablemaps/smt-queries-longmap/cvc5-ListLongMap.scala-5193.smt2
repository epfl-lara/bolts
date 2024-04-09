; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70182 () Bool)

(assert start!70182)

(declare-fun b_free!12565 () Bool)

(declare-fun b_next!12565 () Bool)

(assert (=> start!70182 (= b_free!12565 (not b_next!12565))))

(declare-fun tp!44412 () Bool)

(declare-fun b_and!21363 () Bool)

(assert (=> start!70182 (= tp!44412 b_and!21363)))

(declare-fun b!815013 () Bool)

(declare-fun res!556691 () Bool)

(declare-fun e!451919 () Bool)

(assert (=> b!815013 (=> (not res!556691) (not e!451919))))

(declare-datatypes ((array!44738 0))(
  ( (array!44739 (arr!21424 (Array (_ BitVec 32) (_ BitVec 64))) (size!21845 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44738)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44738 (_ BitVec 32)) Bool)

(assert (=> b!815013 (= res!556691 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun res!556690 () Bool)

(assert (=> start!70182 (=> (not res!556690) (not e!451919))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70182 (= res!556690 (validMask!0 mask!1312))))

(assert (=> start!70182 e!451919))

(declare-fun tp_is_empty!14275 () Bool)

(assert (=> start!70182 tp_is_empty!14275))

(declare-fun array_inv!17123 (array!44738) Bool)

(assert (=> start!70182 (array_inv!17123 _keys!976)))

(assert (=> start!70182 true))

(declare-datatypes ((V!24035 0))(
  ( (V!24036 (val!7185 Int)) )
))
(declare-datatypes ((ValueCell!6722 0))(
  ( (ValueCellFull!6722 (v!9608 V!24035)) (EmptyCell!6722) )
))
(declare-datatypes ((array!44740 0))(
  ( (array!44741 (arr!21425 (Array (_ BitVec 32) ValueCell!6722)) (size!21846 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44740)

(declare-fun e!451917 () Bool)

(declare-fun array_inv!17124 (array!44740) Bool)

(assert (=> start!70182 (and (array_inv!17124 _values!788) e!451917)))

(assert (=> start!70182 tp!44412))

(declare-fun mapIsEmpty!22996 () Bool)

(declare-fun mapRes!22996 () Bool)

(assert (=> mapIsEmpty!22996 mapRes!22996))

(declare-fun b!815014 () Bool)

(declare-fun e!451916 () Bool)

(assert (=> b!815014 (= e!451917 (and e!451916 mapRes!22996))))

(declare-fun condMapEmpty!22996 () Bool)

(declare-fun mapDefault!22996 () ValueCell!6722)

