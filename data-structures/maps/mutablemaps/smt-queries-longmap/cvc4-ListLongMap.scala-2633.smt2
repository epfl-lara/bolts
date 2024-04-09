; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39628 () Bool)

(assert start!39628)

(declare-fun b_free!9887 () Bool)

(declare-fun b_next!9887 () Bool)

(assert (=> start!39628 (= b_free!9887 (not b_next!9887))))

(declare-fun tp!35190 () Bool)

(declare-fun b_and!17561 () Bool)

(assert (=> start!39628 (= tp!35190 b_and!17561)))

(declare-fun b!424509 () Bool)

(declare-fun res!248452 () Bool)

(declare-fun e!252136 () Bool)

(assert (=> b!424509 (=> (not res!248452) (not e!252136))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!424509 (= res!248452 (validMask!0 mask!1025))))

(declare-fun b!424510 () Bool)

(declare-fun res!248454 () Bool)

(declare-fun e!252138 () Bool)

(assert (=> b!424510 (=> (not res!248454) (not e!252138))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!424510 (= res!248454 (bvsle from!863 i!563))))

(declare-fun b!424511 () Bool)

(declare-fun res!248447 () Bool)

(assert (=> b!424511 (=> (not res!248447) (not e!252136))))

(declare-datatypes ((array!25905 0))(
  ( (array!25906 (arr!12399 (Array (_ BitVec 32) (_ BitVec 64))) (size!12751 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25905)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15823 0))(
  ( (V!15824 (val!5564 Int)) )
))
(declare-datatypes ((ValueCell!5176 0))(
  ( (ValueCellFull!5176 (v!7807 V!15823)) (EmptyCell!5176) )
))
(declare-datatypes ((array!25907 0))(
  ( (array!25908 (arr!12400 (Array (_ BitVec 32) ValueCell!5176)) (size!12752 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25907)

(assert (=> b!424511 (= res!248447 (and (= (size!12752 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12751 _keys!709) (size!12752 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!424512 () Bool)

(assert (=> b!424512 (= e!252136 e!252138)))

(declare-fun res!248445 () Bool)

(assert (=> b!424512 (=> (not res!248445) (not e!252138))))

(declare-fun lt!194384 () array!25905)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25905 (_ BitVec 32)) Bool)

(assert (=> b!424512 (= res!248445 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194384 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!424512 (= lt!194384 (array!25906 (store (arr!12399 _keys!709) i!563 k!794) (size!12751 _keys!709)))))

(declare-fun b!424513 () Bool)

(declare-fun res!248451 () Bool)

(assert (=> b!424513 (=> (not res!248451) (not e!252136))))

(declare-fun arrayContainsKey!0 (array!25905 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!424513 (= res!248451 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!424514 () Bool)

(declare-fun e!252134 () Bool)

(declare-fun e!252137 () Bool)

(declare-fun mapRes!18180 () Bool)

(assert (=> b!424514 (= e!252134 (and e!252137 mapRes!18180))))

(declare-fun condMapEmpty!18180 () Bool)

(declare-fun mapDefault!18180 () ValueCell!5176)

