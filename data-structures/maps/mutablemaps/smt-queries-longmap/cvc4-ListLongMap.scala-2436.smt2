; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38446 () Bool)

(assert start!38446)

(declare-fun b!396242 () Bool)

(declare-fun res!227393 () Bool)

(declare-fun e!239788 () Bool)

(assert (=> b!396242 (=> (not res!227393) (not e!239788))))

(declare-datatypes ((array!23603 0))(
  ( (array!23604 (arr!11248 (Array (_ BitVec 32) (_ BitVec 64))) (size!11600 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23603)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!396242 (= res!227393 (or (= (select (arr!11248 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11248 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!227387 () Bool)

(assert (=> start!38446 (=> (not res!227387) (not e!239788))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38446 (= res!227387 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11600 _keys!709))))))

(assert (=> start!38446 e!239788))

(assert (=> start!38446 true))

(declare-datatypes ((V!14247 0))(
  ( (V!14248 (val!4973 Int)) )
))
(declare-datatypes ((ValueCell!4585 0))(
  ( (ValueCellFull!4585 (v!7216 V!14247)) (EmptyCell!4585) )
))
(declare-datatypes ((array!23605 0))(
  ( (array!23606 (arr!11249 (Array (_ BitVec 32) ValueCell!4585)) (size!11601 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23605)

(declare-fun e!239786 () Bool)

(declare-fun array_inv!8234 (array!23605) Bool)

(assert (=> start!38446 (and (array_inv!8234 _values!549) e!239786)))

(declare-fun array_inv!8235 (array!23603) Bool)

(assert (=> start!38446 (array_inv!8235 _keys!709)))

(declare-fun b!396243 () Bool)

(declare-fun res!227389 () Bool)

(assert (=> b!396243 (=> (not res!227389) (not e!239788))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23603 (_ BitVec 32)) Bool)

(assert (=> b!396243 (= res!227389 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!396244 () Bool)

(declare-fun e!239791 () Bool)

(declare-fun mapRes!16407 () Bool)

(assert (=> b!396244 (= e!239786 (and e!239791 mapRes!16407))))

(declare-fun condMapEmpty!16407 () Bool)

(declare-fun mapDefault!16407 () ValueCell!4585)

