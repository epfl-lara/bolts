; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20026 () Bool)

(assert start!20026)

(declare-fun b!196044 () Bool)

(declare-fun res!92529 () Bool)

(declare-fun e!129070 () Bool)

(assert (=> b!196044 (=> (not res!92529) (not e!129070))))

(declare-datatypes ((List!2480 0))(
  ( (Nil!2477) (Cons!2476 (h!3118 (_ BitVec 64)) (t!7419 List!2480)) )
))
(declare-fun noDuplicate!62 (List!2480) Bool)

(assert (=> b!196044 (= res!92529 (noDuplicate!62 Nil!2477))))

(declare-fun b!196045 () Bool)

(declare-fun res!92530 () Bool)

(assert (=> b!196045 (=> (not res!92530) (not e!129070))))

(declare-datatypes ((array!8342 0))(
  ( (array!8343 (arr!3922 (Array (_ BitVec 32) (_ BitVec 64))) (size!4247 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8342)

(assert (=> b!196045 (= res!92530 (and (bvsle #b00000000000000000000000000000000 (size!4247 _keys!825)) (bvslt (size!4247 _keys!825) #b01111111111111111111111111111111)))))

(declare-fun res!92531 () Bool)

(assert (=> start!20026 (=> (not res!92531) (not e!129070))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20026 (= res!92531 (validMask!0 mask!1149))))

(assert (=> start!20026 e!129070))

(assert (=> start!20026 true))

(declare-datatypes ((V!5701 0))(
  ( (V!5702 (val!2315 Int)) )
))
(declare-datatypes ((ValueCell!1927 0))(
  ( (ValueCellFull!1927 (v!4280 V!5701)) (EmptyCell!1927) )
))
(declare-datatypes ((array!8344 0))(
  ( (array!8345 (arr!3923 (Array (_ BitVec 32) ValueCell!1927)) (size!4248 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8344)

(declare-fun e!129071 () Bool)

(declare-fun array_inv!2539 (array!8344) Bool)

(assert (=> start!20026 (and (array_inv!2539 _values!649) e!129071)))

(declare-fun array_inv!2540 (array!8342) Bool)

(assert (=> start!20026 (array_inv!2540 _keys!825)))

(declare-fun b!196046 () Bool)

(declare-fun e!129068 () Bool)

(assert (=> b!196046 (= e!129070 e!129068)))

(declare-fun res!92533 () Bool)

(assert (=> b!196046 (=> res!92533 e!129068)))

(declare-fun contains!1387 (List!2480 (_ BitVec 64)) Bool)

(assert (=> b!196046 (= res!92533 (contains!1387 Nil!2477 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!7877 () Bool)

(declare-fun mapRes!7877 () Bool)

(assert (=> mapIsEmpty!7877 mapRes!7877))

(declare-fun b!196047 () Bool)

(declare-fun e!129067 () Bool)

(declare-fun tp_is_empty!4541 () Bool)

(assert (=> b!196047 (= e!129067 tp_is_empty!4541)))

(declare-fun b!196048 () Bool)

(assert (=> b!196048 (= e!129068 (contains!1387 Nil!2477 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!196049 () Bool)

(assert (=> b!196049 (= e!129071 (and e!129067 mapRes!7877))))

(declare-fun condMapEmpty!7877 () Bool)

(declare-fun mapDefault!7877 () ValueCell!1927)

