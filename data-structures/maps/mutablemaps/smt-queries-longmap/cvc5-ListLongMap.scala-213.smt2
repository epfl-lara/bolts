; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3958 () Bool)

(assert start!3958)

(declare-fun b_free!865 () Bool)

(declare-fun b_next!865 () Bool)

(assert (=> start!3958 (= b_free!865 (not b_next!865))))

(declare-fun tp!4015 () Bool)

(declare-fun b_and!1677 () Bool)

(assert (=> start!3958 (= tp!4015 b_and!1677)))

(declare-fun b!28387 () Bool)

(declare-fun e!18358 () Bool)

(assert (=> b!28387 (= e!18358 true)))

(declare-fun k!1304 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!70 0))(
  ( (MissingZero!70 (index!2402 (_ BitVec 32))) (Found!70 (index!2403 (_ BitVec 32))) (Intermediate!70 (undefined!882 Bool) (index!2404 (_ BitVec 32)) (x!6316 (_ BitVec 32))) (Undefined!70) (MissingVacant!70 (index!2405 (_ BitVec 32))) )
))
(declare-fun lt!10789 () SeekEntryResult!70)

(declare-datatypes ((array!1663 0))(
  ( (array!1664 (arr!785 (Array (_ BitVec 32) (_ BitVec 64))) (size!886 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1663)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!1663 (_ BitVec 32)) SeekEntryResult!70)

(assert (=> b!28387 (= lt!10789 (seekEntryOrOpen!0 k!1304 _keys!1833 mask!2294))))

(declare-fun b!28388 () Bool)

(declare-fun res!16885 () Bool)

(declare-fun e!18356 () Bool)

(assert (=> b!28388 (=> (not res!16885) (not e!18356))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!28388 (= res!16885 (validKeyInArray!0 k!1304))))

(declare-fun mapIsEmpty!1357 () Bool)

(declare-fun mapRes!1357 () Bool)

(assert (=> mapIsEmpty!1357 mapRes!1357))

(declare-fun b!28389 () Bool)

(declare-fun e!18355 () Bool)

(declare-fun e!18360 () Bool)

(assert (=> b!28389 (= e!18355 (and e!18360 mapRes!1357))))

(declare-fun condMapEmpty!1357 () Bool)

(declare-datatypes ((V!1451 0))(
  ( (V!1452 (val!636 Int)) )
))
(declare-datatypes ((ValueCell!410 0))(
  ( (ValueCellFull!410 (v!1725 V!1451)) (EmptyCell!410) )
))
(declare-datatypes ((array!1665 0))(
  ( (array!1666 (arr!786 (Array (_ BitVec 32) ValueCell!410)) (size!887 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1665)

(declare-fun mapDefault!1357 () ValueCell!410)

