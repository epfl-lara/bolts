; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82578 () Bool)

(assert start!82578)

(declare-fun b_free!18683 () Bool)

(declare-fun b_next!18683 () Bool)

(assert (=> start!82578 (= b_free!18683 (not b_next!18683))))

(declare-fun tp!65170 () Bool)

(declare-fun b_and!30189 () Bool)

(assert (=> start!82578 (= tp!65170 b_and!30189)))

(declare-fun b!961856 () Bool)

(declare-fun res!643813 () Bool)

(declare-fun e!542457 () Bool)

(assert (=> b!961856 (=> (not res!643813) (not e!542457))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-datatypes ((V!33629 0))(
  ( (V!33630 (val!10793 Int)) )
))
(declare-datatypes ((ValueCell!10261 0))(
  ( (ValueCellFull!10261 (v!13351 V!33629)) (EmptyCell!10261) )
))
(declare-datatypes ((array!59055 0))(
  ( (array!59056 (arr!28392 (Array (_ BitVec 32) ValueCell!10261)) (size!28872 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59055)

(declare-datatypes ((array!59057 0))(
  ( (array!59058 (arr!28393 (Array (_ BitVec 32) (_ BitVec 64))) (size!28873 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59057)

(assert (=> b!961856 (= res!643813 (and (= (size!28872 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28873 _keys!1686) (size!28872 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!961857 () Bool)

(declare-fun e!542455 () Bool)

(declare-fun tp_is_empty!21485 () Bool)

(assert (=> b!961857 (= e!542455 tp_is_empty!21485)))

(declare-fun mapIsEmpty!34222 () Bool)

(declare-fun mapRes!34222 () Bool)

(assert (=> mapIsEmpty!34222 mapRes!34222))

(declare-fun b!961858 () Bool)

(declare-fun res!643810 () Bool)

(assert (=> b!961858 (=> (not res!643810) (not e!542457))))

(declare-datatypes ((List!19831 0))(
  ( (Nil!19828) (Cons!19827 (h!20989 (_ BitVec 64)) (t!28202 List!19831)) )
))
(declare-fun arrayNoDuplicates!0 (array!59057 (_ BitVec 32) List!19831) Bool)

(assert (=> b!961858 (= res!643810 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19828))))

(declare-fun res!643814 () Bool)

(assert (=> start!82578 (=> (not res!643814) (not e!542457))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82578 (= res!643814 (validMask!0 mask!2110))))

(assert (=> start!82578 e!542457))

(assert (=> start!82578 true))

(declare-fun e!542454 () Bool)

(declare-fun array_inv!21923 (array!59055) Bool)

(assert (=> start!82578 (and (array_inv!21923 _values!1400) e!542454)))

(declare-fun array_inv!21924 (array!59057) Bool)

(assert (=> start!82578 (array_inv!21924 _keys!1686)))

(assert (=> start!82578 tp!65170))

(assert (=> start!82578 tp_is_empty!21485))

(declare-fun b!961859 () Bool)

(declare-fun e!542458 () Bool)

(assert (=> b!961859 (= e!542458 tp_is_empty!21485)))

(declare-fun b!961860 () Bool)

(declare-fun res!643812 () Bool)

(assert (=> b!961860 (=> (not res!643812) (not e!542457))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59057 (_ BitVec 32)) Bool)

(assert (=> b!961860 (= res!643812 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!961861 () Bool)

(declare-fun res!643811 () Bool)

(assert (=> b!961861 (=> (not res!643811) (not e!542457))))

(declare-fun i!803 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!961861 (= res!643811 (validKeyInArray!0 (select (arr!28393 _keys!1686) i!803)))))

(declare-fun b!961862 () Bool)

(assert (=> b!961862 (= e!542454 (and e!542458 mapRes!34222))))

(declare-fun condMapEmpty!34222 () Bool)

(declare-fun mapDefault!34222 () ValueCell!10261)

