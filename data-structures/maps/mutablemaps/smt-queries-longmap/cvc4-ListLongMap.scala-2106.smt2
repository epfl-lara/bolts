; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35816 () Bool)

(assert start!35816)

(declare-fun res!199846 () Bool)

(declare-fun e!220222 () Bool)

(assert (=> start!35816 (=> (not res!199846) (not e!220222))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35816 (= res!199846 (validMask!0 mask!1842))))

(assert (=> start!35816 e!220222))

(assert (=> start!35816 true))

(declare-datatypes ((V!11991 0))(
  ( (V!11992 (val!4175 Int)) )
))
(declare-datatypes ((ValueCell!3787 0))(
  ( (ValueCellFull!3787 (v!6365 V!11991)) (EmptyCell!3787) )
))
(declare-datatypes ((array!20043 0))(
  ( (array!20044 (arr!9512 (Array (_ BitVec 32) ValueCell!3787)) (size!9864 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!20043)

(declare-fun e!220225 () Bool)

(declare-fun array_inv!7002 (array!20043) Bool)

(assert (=> start!35816 (and (array_inv!7002 _values!1208) e!220225)))

(declare-datatypes ((array!20045 0))(
  ( (array!20046 (arr!9513 (Array (_ BitVec 32) (_ BitVec 64))) (size!9865 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!20045)

(declare-fun array_inv!7003 (array!20045) Bool)

(assert (=> start!35816 (array_inv!7003 _keys!1456)))

(declare-fun b!359457 () Bool)

(declare-fun res!199844 () Bool)

(assert (=> b!359457 (=> (not res!199844) (not e!220222))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!359457 (= res!199844 (and (= (size!9864 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9865 _keys!1456) (size!9864 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!359458 () Bool)

(declare-fun e!220226 () Bool)

(declare-fun tp_is_empty!8261 () Bool)

(assert (=> b!359458 (= e!220226 tp_is_empty!8261)))

(declare-fun b!359459 () Bool)

(assert (=> b!359459 (= e!220222 false)))

(declare-fun lt!166339 () Bool)

(declare-datatypes ((List!5499 0))(
  ( (Nil!5496) (Cons!5495 (h!6351 (_ BitVec 64)) (t!10657 List!5499)) )
))
(declare-fun arrayNoDuplicates!0 (array!20045 (_ BitVec 32) List!5499) Bool)

(assert (=> b!359459 (= lt!166339 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5496))))

(declare-fun b!359460 () Bool)

(declare-fun mapRes!13899 () Bool)

(assert (=> b!359460 (= e!220225 (and e!220226 mapRes!13899))))

(declare-fun condMapEmpty!13899 () Bool)

(declare-fun mapDefault!13899 () ValueCell!3787)

