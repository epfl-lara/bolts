; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3690 () Bool)

(assert start!3690)

(declare-fun res!15378 () Bool)

(declare-fun e!16757 () Bool)

(assert (=> start!3690 (=> (not res!15378) (not e!16757))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3690 (= res!15378 (validMask!0 mask!2294))))

(assert (=> start!3690 e!16757))

(assert (=> start!3690 true))

(declare-datatypes ((V!1227 0))(
  ( (V!1228 (val!552 Int)) )
))
(declare-datatypes ((ValueCell!326 0))(
  ( (ValueCellFull!326 (v!1637 V!1227)) (EmptyCell!326) )
))
(declare-datatypes ((array!1337 0))(
  ( (array!1338 (arr!630 (Array (_ BitVec 32) ValueCell!326)) (size!731 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1337)

(declare-fun e!16753 () Bool)

(declare-fun array_inv!439 (array!1337) Bool)

(assert (=> start!3690 (and (array_inv!439 _values!1501) e!16753)))

(declare-datatypes ((array!1339 0))(
  ( (array!1340 (arr!631 (Array (_ BitVec 32) (_ BitVec 64))) (size!732 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1339)

(declare-fun array_inv!440 (array!1339) Bool)

(assert (=> start!3690 (array_inv!440 _keys!1833)))

(declare-fun b!25857 () Bool)

(declare-fun e!16756 () Bool)

(declare-fun tp_is_empty!1051 () Bool)

(assert (=> b!25857 (= e!16756 tp_is_empty!1051)))

(declare-fun b!25858 () Bool)

(declare-fun res!15380 () Bool)

(assert (=> b!25858 (=> (not res!15380) (not e!16757))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1339 (_ BitVec 32)) Bool)

(assert (=> b!25858 (= res!15380 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!25859 () Bool)

(declare-fun mapRes!1081 () Bool)

(assert (=> b!25859 (= e!16753 (and e!16756 mapRes!1081))))

(declare-fun condMapEmpty!1081 () Bool)

(declare-fun mapDefault!1081 () ValueCell!326)

