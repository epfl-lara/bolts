; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82198 () Bool)

(assert start!82198)

(declare-fun b!957539 () Bool)

(declare-fun res!641069 () Bool)

(declare-fun e!539841 () Bool)

(assert (=> b!957539 (=> (not res!641069) (not e!539841))))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((array!58415 0))(
  ( (array!58416 (arr!28077 (Array (_ BitVec 32) (_ BitVec 64))) (size!28557 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58415)

(declare-datatypes ((V!33181 0))(
  ( (V!33182 (val!10625 Int)) )
))
(declare-datatypes ((ValueCell!10093 0))(
  ( (ValueCellFull!10093 (v!13182 V!33181)) (EmptyCell!10093) )
))
(declare-datatypes ((array!58417 0))(
  ( (array!58418 (arr!28078 (Array (_ BitVec 32) ValueCell!10093)) (size!28558 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58417)

(declare-fun mask!2088 () (_ BitVec 32))

(assert (=> b!957539 (= res!641069 (and (= (size!28558 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28557 _keys!1668) (size!28558 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun res!641068 () Bool)

(assert (=> start!82198 (=> (not res!641068) (not e!539841))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82198 (= res!641068 (validMask!0 mask!2088))))

(assert (=> start!82198 e!539841))

(assert (=> start!82198 true))

(declare-fun e!539842 () Bool)

(declare-fun array_inv!21723 (array!58417) Bool)

(assert (=> start!82198 (and (array_inv!21723 _values!1386) e!539842)))

(declare-fun array_inv!21724 (array!58415) Bool)

(assert (=> start!82198 (array_inv!21724 _keys!1668)))

(declare-fun mapIsEmpty!33703 () Bool)

(declare-fun mapRes!33703 () Bool)

(assert (=> mapIsEmpty!33703 mapRes!33703))

(declare-fun b!957540 () Bool)

(declare-fun res!641070 () Bool)

(assert (=> b!957540 (=> (not res!641070) (not e!539841))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58415 (_ BitVec 32)) Bool)

(assert (=> b!957540 (= res!641070 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!957541 () Bool)

(declare-fun e!539840 () Bool)

(assert (=> b!957541 (= e!539842 (and e!539840 mapRes!33703))))

(declare-fun condMapEmpty!33703 () Bool)

(declare-fun mapDefault!33703 () ValueCell!10093)

