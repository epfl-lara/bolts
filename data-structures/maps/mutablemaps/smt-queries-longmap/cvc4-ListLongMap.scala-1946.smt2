; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34434 () Bool)

(assert start!34434)

(declare-fun b_free!7349 () Bool)

(declare-fun b_next!7349 () Bool)

(assert (=> start!34434 (= b_free!7349 (not b_next!7349))))

(declare-fun tp!25592 () Bool)

(declare-fun b_and!14575 () Bool)

(assert (=> start!34434 (= tp!25592 b_and!14575)))

(declare-fun res!189987 () Bool)

(declare-fun e!210659 () Bool)

(assert (=> start!34434 (=> (not res!189987) (not e!210659))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34434 (= res!189987 (validMask!0 mask!2385))))

(assert (=> start!34434 e!210659))

(assert (=> start!34434 true))

(declare-fun tp_is_empty!7301 () Bool)

(assert (=> start!34434 tp_is_empty!7301))

(assert (=> start!34434 tp!25592))

(declare-datatypes ((V!10711 0))(
  ( (V!10712 (val!3695 Int)) )
))
(declare-datatypes ((ValueCell!3307 0))(
  ( (ValueCellFull!3307 (v!5867 V!10711)) (EmptyCell!3307) )
))
(declare-datatypes ((array!18165 0))(
  ( (array!18166 (arr!8596 (Array (_ BitVec 32) ValueCell!3307)) (size!8948 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18165)

(declare-fun e!210660 () Bool)

(declare-fun array_inv!6356 (array!18165) Bool)

(assert (=> start!34434 (and (array_inv!6356 _values!1525) e!210660)))

(declare-datatypes ((array!18167 0))(
  ( (array!18168 (arr!8597 (Array (_ BitVec 32) (_ BitVec 64))) (size!8949 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18167)

(declare-fun array_inv!6357 (array!18167) Bool)

(assert (=> start!34434 (array_inv!6357 _keys!1895)))

(declare-fun b!343556 () Bool)

(declare-fun res!189989 () Bool)

(assert (=> b!343556 (=> (not res!189989) (not e!210659))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!343556 (= res!189989 (validKeyInArray!0 k!1348))))

(declare-fun mapIsEmpty!12390 () Bool)

(declare-fun mapRes!12390 () Bool)

(assert (=> mapIsEmpty!12390 mapRes!12390))

(declare-fun b!343557 () Bool)

(declare-fun res!189990 () Bool)

(assert (=> b!343557 (=> (not res!189990) (not e!210659))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18167 (_ BitVec 32)) Bool)

(assert (=> b!343557 (= res!189990 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!343558 () Bool)

(declare-datatypes ((SeekEntryResult!3316 0))(
  ( (MissingZero!3316 (index!15443 (_ BitVec 32))) (Found!3316 (index!15444 (_ BitVec 32))) (Intermediate!3316 (undefined!4128 Bool) (index!15445 (_ BitVec 32)) (x!34201 (_ BitVec 32))) (Undefined!3316) (MissingVacant!3316 (index!15446 (_ BitVec 32))) )
))
(declare-fun lt!162558 () SeekEntryResult!3316)

(assert (=> b!343558 (= e!210659 (and (not (is-Found!3316 lt!162558)) (not (is-MissingZero!3316 lt!162558)) (not (is-MissingVacant!3316 lt!162558)) (is-Undefined!3316 lt!162558) (not (= (size!8949 _keys!1895) (bvadd #b00000000000000000000000000000001 mask!2385)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18167 (_ BitVec 32)) SeekEntryResult!3316)

(assert (=> b!343558 (= lt!162558 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!343559 () Bool)

(declare-fun e!210661 () Bool)

(assert (=> b!343559 (= e!210660 (and e!210661 mapRes!12390))))

(declare-fun condMapEmpty!12390 () Bool)

(declare-fun mapDefault!12390 () ValueCell!3307)

